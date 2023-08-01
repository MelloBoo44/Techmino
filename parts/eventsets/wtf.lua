--Ultrabone code from NOT_A_ROBOT's master_l

-------------------------<LOCAL VARIABLES>-------------------------
local gc=love.graphics
local gc_translate,gc_rotate,gc_push,gc_pop=gc.translate,gc.rotate,gc.push,gc.pop
local gc_stencil,gc_rectangle,gc_scale=gc.stencil,gc.rectangle,gc.scale
local gc_setColor,gc_setStencilTest=gc.setColor,gc.setStencilTest
local gc_draw,gc_print=gc.draw,gc.print

local border=GC.DO{334,620,
    {'setLW',2},
    {'dRect',16,1,302,618}
}
local drawFrames=0

-------------------------</LOCAL VARIABLES>-------------------------
-------------------------<LOCAL FUNCTIONS>-------------------------

local function _boardTransform(mode)
    if mode then
        if mode=="U-D"then
            gc_translate(0,590)
            gc_scale(1,-1)
        elseif mode=="L-R"then
            gc_translate(300,0)
            gc_scale(-1,1)
        elseif mode=="180"then
            gc_translate(300,590)
            gc_scale(-1,-1)
        end
    end
end
local function _stencilBoard()gc_rectangle('fill',0,-10,300,610)end
local function _applyField(P)
    gc_push('transform')

    --Apply shaking
    if P.shakeTimer>0 then
        local dx=math.floor(P.shakeTimer/2)
        local dy=math.floor(P.shakeTimer/3)
        gc_translate(dx^1.6*(dx%2*2-1)*(P.gameEnv.shakeFX+1)/30,dy^1.4*(dy%2*2-1)*(P.gameEnv.shakeFX+1)/30)
    end

    --Apply swingOffset
    local O=P.swingOffset
    if P.gameEnv.shakeFX then
        local k=P.gameEnv.shakeFX
        gc_translate(O.x*k+150+150,O.y*k+300)
        gc_rotate(O.a*k)
        gc_translate(-150,-300)
    else
        gc_translate(150,0)
    end

    --Apply stencil
    gc_stencil(_stencilBoard)
    gc_setStencilTest('equal',1)

    --Move camera
    gc_push('transform')
    _boardTransform(P.gameEnv.flipBoard)
    gc_translate(0,P.fieldBeneath+P.fieldUp)
end

local function getSection(lvl) return lvl==1799 and 19 or math.floor(lvl/100)+1 end

local function sendGarbage(P)
    SFX.play('warn_1')
    if P.cur then return end
    local arr=LINE.new(0)
    if #P.field>0 then
        for i=1,#P.field[1] do
            arr[i]=P.field[1][i]
        end
    else return end
    for i=1,#arr do arr[i]=arr[i]>0 and 20 or 0 end -- set everything to either 21 or 0
    table.insert(P.field,1,arr)
    table.insert(P.visTime,1,LINE.new(20))
    P.fieldBeneath=P.fieldBeneath+30
    P.modeData.garbageCounter=0
end

local function drawGarbageMeter(P,fill,color)
    if not fill then return
    elseif fill<=0 then return end

    local f=600*math.min(fill,1)
    _applyField(P)
    gc_setStencilTest()
    gc_setColor(color and color or COLOR.Z)
    gc_rectangle('fill',303,600-f,11,f,2)
    gc_pop()
    gc_pop()
end

-------------------------<ULTRABONE LOCAL FUNCTIONS>-------------------------
local ultraBone={}
ultraBone.bone=GC.DO{30,30,
    -- left/right vertical line
    {'fRect',3,6,4,20},
    {'fRect',23,6,4,20},

    -- top horizontal lines
    {'fRect',7,6,5,2},
    {'fRect',18,6,5,2},

    -- bottom horizontal lines
    {'fRect',7,24,5,2},
    {'fRect',18,24,5,2},
}
ultraBone.drawBlock=function(x,y)gc.draw(ultraBone.bone,30*x+120,30*y)end
ultraBone.drawActive=function(UB,CB,curX,curY) -- UltraBone, Current Block, P.curX, P.curY
    if UB==1 then
        for i=1,#CB do for j=1,#CB[1]do
            if CB[i][j]then gc_draw(ultraBone.bone,30*(j+curX-1)-30,-30*(i+curY-1))end
        end end
    else
        for i=1,#CB do for j=1,#CB[1] do
            if CB[i][j] then
                local x,y=30*(curX+j)+120,30*(19-i+curY)
                -- Up border
                if not (CB[i+1]and CB[i+1][j]) then gc_rectangle("fill",x,y+30,30,2) end
                -- Left border
                if not (CB[i][j-1]and CB[i][j-1]) then gc_rectangle("fill",x,y+30,2,30) end
                -- Right border
                if not (CB[i][j+1]and CB[i][j+1]) then gc_rectangle("fill",x+28,y+30,2,30) end
                -- Down border
                if not (CB[i-1]and CB[i-1][j]) then gc_rectangle("fill",x,y+60,30,2) end
            end
        end end
    end
end
ultraBone.drawXs=function(B,fieldH,fieldBeneath,hold)
    gc_setColor(0,1,0,(hold and .3 or .8))
    local y=math.floor(fieldH+1-math.modf(B.RS.centerPos[B.id][B.dir][1]))+math.ceil(fieldBeneath/30)+(hold and .14 or 0)
    B=B.bk
    local x=math.floor(6-#B[1]*.5)
    local cross=TEXTURE.puzzleMark[-1]
    for i=1,#B do for j=1,#B[1]do
        if B[i][j]then
            gc_draw(cross,30*(x+j-2),30*(1-y-i))
        end
    end end
end
ultraBone.drawLvl=function(s1,s2)
    FONT.set(40,'mono')
    GC.mStr(s1,62,322)
    GC.mStr(s2,62,376)
    gc_rectangle('fill',15,375,90,4)
end
ultraBone.drawMisc=function(P)
    local D=P.modeData
    -- time
    FONT.set(25,'mono')
    local tm=STRING.time(P.stat.time)
    gc_print(tm,20,540)

    -- score
    gc_print(math.ceil(P.score1),18,509)

    -- finesse counter
    if P.finesseCombo>2 then
        local S=P.stat
        local str=P.finesseCombo.."x"
        if S.finesseRate==5*S.piece then gc_setColor(1,0,0)
        elseif S.maxFinesseCombo==S.piece then gc_setColor(1,1,0)
        else gc_setColor(0,1,0)end
        gc_print(str,20,570)
    end
    gc_setColor(0,1,0,1)

    -- Lock Delay Bar & Lock Delay Reset Counter
    if P.cur and P.lockDelay and P.lockDelay>0 then gc_rectangle('fill',150,600,300*(P.lockDelay/P.gameEnv.lock),6) end
    for i=1,math.min(P.freshTime,15) do
        gc_rectangle('fill',130+20*i,615,14,5)
    end

    -- B2B Bar
    gc_rectangle('fill',135,600-P.b2b*.6,11,P.b2b*.6)

    ultraBone.drawSpeed(499,505,P.dropSpeed)
    FONT.set(30,'mono')
    GC.mStr(P.username,300,-60)
end
ultraBone.drawSpeed=function(x,y,speed)
    local needle=GC.DO{30,9,{'fRect',5,3,21,3}}
    gc_setColor(0,1,0,1)
    --gc_draw(TEXTURE.dial.frame,x,y)
    gc_draw(needle,x+40,y+40,2.094+(speed<=175 and .02094*speed or 4.712-52.36/(speed-125)),nil,nil,1,1)
    FONT.set(30,'mono')GC.mStr(math.floor(speed),x+40,y+19)
end
ultraBone.drawRoll=function(P)
    local D=P.modeData
    FONT.set(50,'mono')
    if D.rollTransTimer<300 and D.rollTransTimer>0 then
        if D.rollTransTimer<180 and D.rollTransTimer>=120 then GC.mStr("3",300,150)
        elseif D.rollTransTimer<120 and D.rollTransTimer>=60 then GC.mStr("2",300,150)
        elseif D.rollTransTimer<60 and D.rollTransTimer>=0 then GC.mStr("1",300,150)
        end
    end
    gc.rectangle('line',0,240,126,80)
    FONT.set(45,'mono')
	local t=P.stat.frame/60
    local T=("%.1f"):format(120-t)
    --local T=D.rollStartTime+60-P.stat.time
    GC.mStr(T,65,250)
end
ultraBone.draw=function(P,repMode)
    local D=P.modeData
    local UB=D.ultraBone
    local function stencil()gc_rectangle('fill',150,-10,300,610) end
    gc_stencil(stencil)
    gc_setStencilTest('equal',1)
    local F=P.field
    if UB==1 then
        for i=1,#F do for j=1,#F[i] do
            if F[i][j]~=0 then
                gc_setColor(0,1,0,P.visTime[i][j]*0.05)
                if repMode and P.visTime[i][j]<1 then gc_setColor(.4,.4,.4,1)end
                ultraBone.drawBlock(j,20-i)
            end
        end end
    else
        local BF={}
        for i=1,#F do
            BF[i]={}
            for j=1,#F[i]do
                BF[i][j]=F[i][j]
            end
        end
        if P.cur then
            local B=P.cur.bk
            for i=1,#B do for j=1,#B[1] do
                if B[i][j] then
                    if not BF[i+P.curY-1] then BF[i+P.curY-1]={0,0,0,0,0,0,0,0,0,0} end
                    BF[i+P.curY-1][j+P.curX-1]=626
                end
            end end
        end
        for i=1,#BF do for j=1,#BF[i] do
            if BF[i][j]~=0 then
                gc_setColor(0,1,0,BF[i][j]==626 and 1 or P.visTime[i][j]*0.05)
                if repMode and BF[i][j]~=626 and P.visTime[i][j]<1 then gc_setColor(.4,.4,.4,1)end
                local x,y=30*j+120,30*(19-i)
                -- Up border
                if i+1>#BF or BF[i+1][j]==0 then gc_rectangle("fill",x,y+30,30,2) end
                -- Left border
                if j<2 or BF[i][j-1]==0 then gc_rectangle("fill",x,y+30,2,30) end
                -- Right border
                if j>9 or BF[i][j+1]==0 then gc_rectangle("fill",x+28,y+30,2,30) end
                -- Down border
                if i<2 or BF[i-1][j]==0 then gc_rectangle("fill",x,y+60,30,2) end
            end
        end end
    end
    gc_setColor(0,1,0,1)
    gc_push('transform')
        gc_translate(150,600)
        if P.cur and UB==1 then ultraBone.drawActive(UB,P.cur.bk,P.curX,P.curY) end
        ultraBone.drawXs(P.nextQueue[1],P.gameEnv.fieldH,P.fieldBeneath,false)
        local h=P.holdQueue[1]
        if h then ultraBone.drawXs(h,P.gameEnv.fieldH,P.fieldBeneath,true) end
        gc_setStencilTest()
        gc_setColor(0,1,0,1)
        if UB==1 then
            if h then ultraBone.drawActive(UB,h.bk,-4,19)end
            for i=1,P.gameEnv.nextCount do ultraBone.drawActive(UB,P.nextQueue[i].bk,12,23-3*i)end
        end
    gc_pop()
    if UB~=1 then
        if h and not (D.hideHold and not (P.result=='win' or P.result=='lose' or repMode)) then
            if D.hideHold then gc_setColor(.6,.6,.6) end
            ultraBone.drawActive(UB,h.bk,-5,-17)
            if D.hideHold then gc_setColor(0,1,0) end
        elseif h then
            FONT.set(62,'mono')
            GC.mStr("?",62,0)
        end
        for i=1,P.gameEnv.nextCount do ultraBone.drawActive(UB,P.nextQueue[i].bk,11,3*i-20)end
    end
    if D.rollStarted then ultraBone.drawRoll(P)
    else ultraBone.drawLvl(D.pt,D.target)end
    ultraBone.drawMisc(P)
end
-------------------------</ULTRABONE LOCAL FUNCTIONS>-------------------------








local warnTime={8.6,19,27,38,41,51,64.6,119,120}
--local warnTime={0.3,0.6,1,1.3,1.6,2,2.3,119,120}
for i=1,#warnTime do warnTime[i]=warnTime[i]*60 end

return {
		
    mesDisp=function(P)
		D=P.modeData
        if D.ultraBone then
            gc_push('transform')
            gc_translate(P.x,P.y)
        end
		if D.ultraBone then
            gc_setColor(0,1,0)
            gc.draw(border,-17+150,-12)

            ultraBone.draw(P,repMode)
            if drawFrames%300==0 then collectgarbage('collect') end
            gc_pop()
        end
        drawFrames=drawFrames+1
		
		if P.modeData.ultraBone==false then
        GC.setLineWidth(2)
        GC.setColor(.98,.98,.98,.8)
        GC.rectangle('line',0,260,126,80,4)
        GC.setColor(.98,.98,.98,.4)
        GC.rectangle('fill',0+2,260+2,126-4,80-4,2)
        setFont(45)
        local t=P.stat.frame/60
        local T=("%.1f"):format(120-t)
        GC.setColor(COLOR.dH)
        GC.mStr(T,65,270)
        t=t/120
        GC.setColor(1.7*t,2.3-2*t,.3)
        GC.mStr(T,63,268)
		end
    end,
    task=function(P)
        BGM.set('all','seek',0)
		P.modeData.ultraBone=false
		P.modeData.hideHold=false
		P.frameRun=60            --Set game start delay for this mode to 2 seconds to sync BGM correctly
        P.modeData.section=1
		P.modeData.tCycle=0
		P.modeData.bMove=0
		P.modeData.s4line=0
		P.modeData.s4lineL=0
		P.modeData.blink=0
		P.modeData.blinkL=0
		P.modeData.limitNext=0
		P.modeData.limitNextL=6
		P.modeData.sInv=0
		P.modeData.BGflash=0
		P.modeData.desync=0      --Don't show desync message multiple times
		Mbeat=0                  
        while true do
            coroutine.yield()
			--Do every frame
			
			print(BGM.tell().."   "..(P.stat.frame/60)+2)
			
			if P.modeData.desync==0 then
			if BGM.tell()<((P.stat.frame/60)+2)-0.2 or BGM.tell()>((P.stat.frame/60)+2)+0.2 then
			P.modeData.desync=1
			MES.new('warn',"Music desynced!")
			end
			end
			
			
			
			P.modeData.tCycle=P.modeData.tCycle+1
			if P.modeData.tCycle%20==0 and P.modeData.BGflash==1 then Mbeat=1 end
			
			if P.modeData.bMove==1 and P.modeData.tCycle%20==0 then PLAYERS[1]:movePosition(math.random(450,550),math.random(100,200),0.75) end

			if P.modeData.s4line==1 and P.modeData.tCycle%20==0 and P.modeData.s4lineL~=8 then 
			P:garbageRise(17,1,P:getHolePos()) 
			P.modeData.s4lineL=P.modeData.s4lineL+1 
			end
			if P.modeData.blink==1 and P.modeData.tCycle%20==0 and P.modeData.blinkL<8 then
			P.modeData.blinkL=P.modeData.blinkL+1
			SYSFX.newShade(2.5,P.absFieldX,P.y+0*P.size,300*P.size,600*P.size) 
			end
			if P.modeData.limitNext==1 and P.modeData.tCycle%80==40 and P.modeData.limitNextL>1 then
			P.modeData.limitNextL=P.modeData.limitNextL-1
			P.gameEnv.nextCount=P.modeData.limitNextL
			end
			
			if P.modeData.sInv==1 and P.modeData.tCycle%40==0 then
			P.gameEnv.block=false
			P.gameEnv.ghost=false
			end
			if P.modeData.sInv==1 and P.modeData.tCycle%40==20 then
			P.gameEnv.block=true
			end
			
			--Do on new section + beat timed
            while P.modeData.tCycle%20==0 and P.stat.frame>=warnTime[P.modeData.section] do
                if P.modeData.section<9 then
                    P.modeData.section=P.modeData.section+1
                    playReadySFX(3,.7+P.modeData.section*.03) --debug
                else
                    --playReadySFX(0,.7+P.modeData.section*.03)
                    P:win('finish')
                    return
                end
				
				if P.modeData.section==2 then
				for i=1,10 do
				P.nextQueue[i].color=17
				end
				P.gameEnv.bone=true
				P:set20G(true)
				P.modeData.BGflash=1
				SYSFX.newShade(5,P.absFieldX,P.y+0*P.size,300*P.size,600*P.size)
				P.gameEnv.lock=20
				end
				
				if P.modeData.section==3 then
				P.modeData.bMove=1
				end
				
				
				if P.modeData.section==4 then
				P.modeData.s4line=1
				end
				
				if P.modeData.section==5 then
				P.modeData.blink=1
				P.modeData.bMove=0
				PLAYERS[1]:movePosition(340,60,1)
				SYSFX.newShade(2.5,P.absFieldX,P.y+0*P.size,300*P.size,600*P.size)
				end
				
				if P.modeData.section==6 then
				P.modeData.limitNext=1
				end
				
				if P.modeData.section==7 then
				P.modeData.sInv=1
				end
				
				if P.modeData.section==8 then
				P.modeData.BGflash=0
				P.draw=function(P,repMode)for i=1,#P.gameEnv.mesDisp do P.gameEnv.mesDisp[i](P,repMode)end end
                P.modeData.ultraBone=2
                P.modeData.waiting=1000 -- wtf is this
				end
            end
        end
    end,
}

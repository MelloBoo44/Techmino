return {
	task=function(P)
	P.modeData.mS=0
	P.modeData.bx=100
	P.modeData.by=300
	P.modeData.DX=1
	P.modeData.DY=1
		while true do
			coroutine.yield()
			if P.modeData.DX==1 then P.modeData.bx=P.modeData.bx+1.2 else P.modeData.bx=P.modeData.bx-1.2 end
			if P.modeData.bx>1000 then P.modeData.DX=0 end
			if P.modeData.bx<0 then P.modeData.DX=1 end
			
			if P.modeData.DY==1 then P.modeData.by=P.modeData.by+1.2 else P.modeData.by=P.modeData.by-1.2 end
			if P.modeData.by>400 then P.modeData.DY=0 end
			if P.modeData.by<0 then P.modeData.DY=1 end
			
			
			PLAYERS[1]:movePosition(P.modeData.bx,P.modeData.by,0.5)
			love.graphics.rectangle('line',0,0,600,600)
		end
	end,
	--fkey1=function(P) PLAYERS[1]:movePosition(P.modeData.bx,P.modeData.by,0.5) end,
	
	
	mesDisp=function(P)
        setFont(55)
    end,
	

    hook_drop=function(P)
	--if P.holeRND:random(1,4)==4 then PLAYERS[1]:setPosition(520,140,.18) end
	--PLAYERS[1]:setPosition(520,140,1*(P.stat.frame/1000))
    end
}

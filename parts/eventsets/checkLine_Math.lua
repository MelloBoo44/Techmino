return {
    mesDisp=function(P)
        setFont(55)
        local r=40-P.stat.row
        if r<0 then r=0 end
        GC.mStr(r,63,265)
        PLY.draw.drawTargetLine(P,r)
	end,
	task=function(P)
	levelARM=1
	ARMTime=0
	end,
    hook_drop=function(P)
        if P.stat.row>=40 then
            P:win('finish')
        end
		
		if P.stat.piece%7==0 then
			SCN.go('app_arithmetic') 
		end
    end
}

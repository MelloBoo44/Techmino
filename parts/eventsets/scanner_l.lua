return{
    fieldH=12,
    fillClear=false,
    mesDisp=function(P)
        setFont(55)
		local s="Pieces"
		local ss="until scan"
		local l="Lines"
        local r=20-P.stat.piece%20
        GC.mStr(r,63,165)
		setFont(20)
		GC.mStr(s,65,230)
		GC.mStr(ss,65,250)
		GC.mStr(l,65,360)
		
		setFont(55)
        local e=40-P.stat.row
        if e<0 then e=0 end
        GC.mStr(e,63,300)

    end,
	
	hook_drop=function(P)
		if (P.stat.piece%20)<1 then
			local cc=P:clearFilledLines(P.garbageBeneath+1,#P.field-P.garbageBeneath)
		end
        if P.stat.row>=40 then
            P:win('finish')
        end
	end,
	
}

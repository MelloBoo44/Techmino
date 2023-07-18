return {
    env={
        drop=60,lock=60,
        eventSet='checkLine_40',
        bg='bg2',bgm='race',
    },
    score=function(P) return {P.stat.time,P.stat.piece} end,
    scoreDisp=function(D) return STRING.time(D[1]).."   "..D[2].." Pieces" end,
    comp=function(a,b) return a[1]<b[1] or a[1]==b[1] and a[2]<b[2] end,
    getRank=function(P)
        if P.stat.row<40 then return end
			P.stat.time=P.stat.time+ARMTime
			ARMTime=0
        local T=P.stat.time
        return
            T<=80 and 5 or
            T<=95 and 4 or
            T<=110 and 3 or
            T<=135 and 2 or
            T<=200 and 1 or
            0
    end,
}

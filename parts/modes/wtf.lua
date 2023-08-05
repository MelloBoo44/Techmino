return {
    env={
        drop=1.5,lock=30,freshLimit=12,
        eventSet='wtf',
        bg='wtf',bgm='malate',
    },
    slowMark=true,
    score=function(P) return {P.modeData.rank} end,
    scoreDisp=function(D) return tostring(D[1]) end,
    comp=function(a,b) return a[1]>b[1] end,
    getRank=function(P)
        local r=P.modeData.rank
        return
        r>=5 and 5 or
        r>=4 and 4 or
        r>=3 and 3 or
        r>=2 and 2 or
        r>=1 and 1
    end,
}

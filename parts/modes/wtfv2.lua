return {
    env={
        drop=0,lock=20,freshLimit=8,bone=true,
        eventSet='wtfv2',
        bg='wtf',bgm='malate',
    },
    slowMark=true,
    score=function(P) return {P.modeData.rank.." Rank"} end,
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

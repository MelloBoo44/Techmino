return{
    env={
        eventSet='lockout',
        bg='rgb',bgm='moonbeam',
    },
    score=function(P)return{P.stat.time}end,
    scoreDisp=function(D)return STRING.time(D[1])end,
    comp=function(a,b) return a[1]<b[1] end,
    getRank=function(P)
        if P.result=='win' then
        local L=P.stat.time
        return
        L<=50 and 5 or
        L<=60 and 4 or
        L<=75 and 3 or
        L<=90 and 2 or
        L<=100 and 1 or
        L<=120 and 0
		end
    end,
}

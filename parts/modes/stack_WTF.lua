return{
    env={
        drop=60,lock=60,
        wait=0,fall=50,
        hang=15,
        garbageSpeed=30,
        seqData={1,2,3,4,5,6,7},
        eventSet='stack_WTF',
        bg='blockrain',bgm='there',
    },
	score=function(P)return{P.stat.row}end,
    scoreDisp=function(D)return (D[1]).." Lines"end,
    comp=function(a,b) return a[1]>b[1] end,
    getRank=function(P)

        if P.stat.row<18 then return end
        local T=P.stat.row
        return
        T>=160  and 5 or
        T>=132  and 4 or
        T>=105 and 3 or
        T>=59  and 2 or
        T>=36  and 1 or
		0
		end,
}

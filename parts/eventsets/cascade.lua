return {
	task=function(P)
	-- Reset vars
	for i=1,10 do
		P.nextQueue[i].color=4
	end
	P.modeData.startCascade=1
	P.gameEnv.fillClear=false
        while true do
            coroutine.yield()
			-- run every frame
			for i=1,10 do
				P.nextQueue[i].color=4
			end
		end
	end,
	
	fkey1=function(P) P.modeData.startCascade=1 end,
	fkey2=function(P) P.modeData.startCascade=0 end,
	
    mesDisp=function(P)
        setFont(55)
		--GC.mStr(P.modeData.startCascade,63,265)
    end,
	
    hook_drop=function(P)
	if P.modeData.startCascade==1 then
		for l=1,400 do --check cascade 400 times, lol im scared it wont fully cascade because this is recursive, maybe save board before doing and if nothing chnaged, stop
			for i=1,40 do --for rows
				if P.field[i] then
					for j=1,10 do --for collums
						if P.field[i][j]>0 then
						P.field[i][j]=4
							if i>1 then
								if P.field[i-1][j]==0 then
									P.field[i][j]=0
									P.field[i-1][j]=4
									P.visTime[i][j]=1e99
									P.visTime[i-1][j]=1e99
								end
							end
						end
					end
				end
			end
		end
		P:freshBlock('push')
	end
	cc=P:clearFilledLines(1,#P.field)
    end,
}

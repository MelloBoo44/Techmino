return {
	task=function(P)
	-- Reset vars
	for i=1,10 do
		P.nextQueue[i].color=math.random(1,16)
	end
        while true do
            coroutine.yield()
			-- run every frame
		end
	end,
	
    mesDisp=function(P)
        setFont(55)
    end,
	
    hook_drop=function(P)
		for i=1,10 do
			P.nextQueue[i].color=math.random(1,16)
		end
		
		P.gameEnv.face={math.random(0,3),math.random(0,3),math.random(0,3),math.random(0,3),math.random(0,3),math.random(0,3),math.random(0,3)}
		
		for i=1,40 do --for rows
			if P.field[i] then
				for j=1,10 do --for collums
					if P.field[i][j]>0 then
						P.field[i][j]=math.random(1,16)
						if math.random(1,2)==1 then
							P.visTime[i][j]=(math.random(1,30))
						else
							P.visTime[i][j]=0
						end
					end
				end
			end
		end
		
	end
}

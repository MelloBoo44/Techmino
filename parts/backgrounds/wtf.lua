-- Sync to Malate
local back={}
function back.init()
    --Mbeat=0
end
function back.draw()
    if Mbeat>0 then 
	GC.clear(Mbeat/4.5,Mbeat/4.5,Mbeat/4.5)
	Mbeat=Mbeat-0.1
    else GC.clear(0,0,0)
    end
	if BGsolid==1 then
	GC.clear(1,1,1)
	end
end
return back
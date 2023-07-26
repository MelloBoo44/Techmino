return{
	task=function(P)
		P.modeData.TechAmt=0
		P.modeData.G1=0
		P.modeData.G2=0
		P.modeData.G3=0
		P.modeData.G4=0
		P.modeData.G5=0
		P.modeData.G6=0
		P.modeData.G7=0
		P.modeData.G8=0
		P.modeData.G9=0
		P.modeData.G10=0
		
		--P.modeData.tsd=0
		--P.modeData.sst=0
		--P.modeData.zss=0
		--P.modeData.ist=0
		--P.modeData.jsd=0
		P.modeData.IDg1=7 --I
		P.modeData.IDg2=P.holeRND:random(1,7)
		P.modeData.IDg3=P.holeRND:random(1,7)
		P.modeData.la1=4 --Techrash
		P.modeData.la2=P.holeRND:random(1,3)
		P.modeData.la3=P.holeRND:random(1,3)
		
		P.modeData.la4=P.holeRND:random(1,3)
		P.modeData.la5=P.holeRND:random(1,3)
		P.modeData.la6=P.holeRND:random(1,3)
		P.modeData.la7=P.holeRND:random(1,3)
		P.modeData.la8=P.holeRND:random(1,3)
		P.modeData.la9=P.holeRND:random(1,3)
		P.modeData.la10=P.holeRND:random(1,3)
		
		if P.modeData.IDg2==6 then 
			P.modeData.la2=P.holeRND:random(1,2)
		end
		if P.modeData.IDg3==6 then 
			P.modeData.la3=P.holeRND:random(1,2)
		end
		
		P.modeData.la1a=P.holeRND:random(1,4)
		
		P.modeData.IDg4=P.holeRND:random(1,7)
		P.modeData.IDg5=P.holeRND:random(1,7)
		P.modeData.IDg6=P.holeRND:random(1,7)
		P.modeData.IDg7=P.holeRND:random(1,7)
		P.modeData.IDg8=P.holeRND:random(1,7)
		P.modeData.IDg9=P.holeRND:random(1,7)
		P.modeData.IDg10=P.holeRND:random(1,7)
		
		if P.modeData.IDg4==6 then 
			P.modeData.la4=P.holeRND:random(1,2)
		end
		if P.modeData.IDg5==6 then 
			P.modeData.la5=P.holeRND:random(1,2)
		end
		if P.modeData.IDg6==6 then 
			P.modeData.la6=P.holeRND:random(1,2)
		end
		if P.modeData.IDg7==6 then 
			P.modeData.la7=P.holeRND:random(1,2)
		end
		if P.modeData.IDg8==6 then 
			P.modeData.la8=P.holeRND:random(1,2)
		end
		if P.modeData.IDg9==6 then 
			P.modeData.la9=P.holeRND:random(1,2)
		end
		if P.modeData.IDg10==6 then 
			P.modeData.la10=P.holeRND:random(1,2)
		end
		
		--check 2
		if P.modeData.IDg2==1 then
		P.modeData.IDg2T="Z"
		elseif P.modeData.IDg2==2 then
		P.modeData.IDg2T="S"
		elseif P.modeData.IDg2==3 then
		P.modeData.IDg2T="J"
		elseif P.modeData.IDg2==4 then
		P.modeData.IDg2T="L"
		elseif P.modeData.IDg2==5 then
		P.modeData.IDg2T="T"
		elseif P.modeData.IDg2==6 then
		P.modeData.IDg2T="O"
		elseif P.modeData.IDg2==7 then
		P.modeData.IDg2T="I"
		end
		if P.modeData.IDg3==1 then
		P.modeData.IDg3T="Z"
		elseif P.modeData.IDg3==2 then
		P.modeData.IDg3T="S"
		elseif P.modeData.IDg3==3 then
		P.modeData.IDg3T="J"
		elseif P.modeData.IDg3==4 then
		P.modeData.IDg3T="L"
		elseif P.modeData.IDg3==5 then
		P.modeData.IDg3T="T"
		elseif P.modeData.IDg3==6 then
		P.modeData.IDg3T="O"
		elseif P.modeData.IDg3==7 then
		P.modeData.IDg3T="I"
		end
		if P.modeData.IDg4==1 then
		P.modeData.IDg4T="Z"
		elseif P.modeData.IDg4==2 then
		P.modeData.IDg4T="S"
		elseif P.modeData.IDg4==3 then
		P.modeData.IDg4T="J"
		elseif P.modeData.IDg4==4 then
		P.modeData.IDg4T="L"
		elseif P.modeData.IDg4==5 then
		P.modeData.IDg4T="T"
		elseif P.modeData.IDg4==6 then
		P.modeData.IDg4T="O"
		elseif P.modeData.IDg4==7 then
		P.modeData.IDg4T="I"
		end
		if P.modeData.IDg5==1 then
		P.modeData.IDg5T="Z"
		elseif P.modeData.IDg5==2 then
		P.modeData.IDg5T="S"
		elseif P.modeData.IDg5==3 then
		P.modeData.IDg5T="J"
		elseif P.modeData.IDg5==4 then
		P.modeData.IDg5T="L"
		elseif P.modeData.IDg5==5 then
		P.modeData.IDg5T="T"
		elseif P.modeData.IDg5==6 then
		P.modeData.IDg5T="O"
		elseif P.modeData.IDg5==7 then
		P.modeData.IDg5T="I"
		end
		if P.modeData.IDg6==1 then
		P.modeData.IDg6T="Z"
		elseif P.modeData.IDg6==2 then
		P.modeData.IDg6T="S"
		elseif P.modeData.IDg6==3 then
		P.modeData.IDg6T="J"
		elseif P.modeData.IDg6==4 then
		P.modeData.IDg6T="L"
		elseif P.modeData.IDg6==5 then
		P.modeData.IDg6T="T"
		elseif P.modeData.IDg6==6 then
		P.modeData.IDg6T="O"
		elseif P.modeData.IDg6==7 then
		P.modeData.IDg6T="I"
		end
		if P.modeData.IDg7==1 then
		P.modeData.IDg7T="Z"
		elseif P.modeData.IDg7==2 then
		P.modeData.IDg7T="S"
		elseif P.modeData.IDg7==3 then
		P.modeData.IDg7T="J"
		elseif P.modeData.IDg7==4 then
		P.modeData.IDg7T="L"
		elseif P.modeData.IDg7==5 then
		P.modeData.IDg7T="T"
		elseif P.modeData.IDg7==6 then
		P.modeData.IDg7T="O"
		elseif P.modeData.IDg7==7 then
		P.modeData.IDg7T="I"
		end
		if P.modeData.IDg8==1 then
		P.modeData.IDg8T="Z"
		elseif P.modeData.IDg8==2 then
		P.modeData.IDg8T="S"
		elseif P.modeData.IDg8==3 then
		P.modeData.IDg8T="J"
		elseif P.modeData.IDg8==4 then
		P.modeData.IDg8T="L"
		elseif P.modeData.IDg8==5 then
		P.modeData.IDg8T="T"
		elseif P.modeData.IDg8==6 then
		P.modeData.IDg8T="O"
		elseif P.modeData.IDg8==7 then
		P.modeData.IDg8T="I"
		end
		if P.modeData.IDg9==1 then
		P.modeData.IDg9T="Z"
		elseif P.modeData.IDg9==2 then
		P.modeData.IDg9T="S"
		elseif P.modeData.IDg9==3 then
		P.modeData.IDg9T="J"
		elseif P.modeData.IDg9==4 then
		P.modeData.IDg9T="L"
		elseif P.modeData.IDg9==5 then
		P.modeData.IDg9T="T"
		elseif P.modeData.IDg9==6 then
		P.modeData.IDg9T="O"
		elseif P.modeData.IDg9==7 then
		P.modeData.IDg9T="I"
		end
		
		if P.modeData.IDg10==1 then
		P.modeData.IDg10T="Z"
		elseif P.modeData.IDg10==2 then
		P.modeData.IDg10T="S"
		elseif P.modeData.IDg10==3 then
		P.modeData.IDg10T="J"
		elseif P.modeData.IDg10==4 then
		P.modeData.IDg10T="L"
		elseif P.modeData.IDg10==5 then
		P.modeData.IDg10T="T"
		elseif P.modeData.IDg10==6 then
		P.modeData.IDg10T="O"
		elseif P.modeData.IDg10==7 then
		P.modeData.IDg10T="I"
		end
		
		--check 2 for line amt
		if P.modeData.la2==1 then
		P.modeData.la2T="Single" 
		elseif P.modeData.la2==2 then
		P.modeData.la2T="Double" 
		elseif P.modeData.la2==3 then
		P.modeData.la2T="Triple" 
		end
		if P.modeData.la3==1 then
		P.modeData.la3T="Single" 
		elseif P.modeData.la3==2 then
		P.modeData.la3T="Double" 
		elseif P.modeData.la3==3 then
		P.modeData.la3T="Triple" 
		end
		if P.modeData.la4==1 then
		P.modeData.la4T="Single" 
		elseif P.modeData.la4==2 then
		P.modeData.la4T="Double" 
		elseif P.modeData.la4==3 then
		P.modeData.la4T="Triple" 
		end
		if P.modeData.la5==1 then
		P.modeData.la5T="Single" 
		elseif P.modeData.la5==2 then
		P.modeData.la5T="Double" 
		elseif P.modeData.la5==3 then
		P.modeData.la5T="Triple" 
		end
		if P.modeData.la6==1 then
		P.modeData.la6T="Single" 
		elseif P.modeData.la6==2 then
		P.modeData.la6T="Double" 
		elseif P.modeData.la6==3 then
		P.modeData.la6T="Triple" 
		end
		if P.modeData.la7==1 then
		P.modeData.la7T="Single" 
		elseif P.modeData.la7==2 then
		P.modeData.la7T="Double" 
		elseif P.modeData.la7==3 then
		P.modeData.la7T="Triple" 
		end
		if P.modeData.la8==1 then
		P.modeData.la8T="Single" 
		elseif P.modeData.la8==2 then
		P.modeData.la8T="Double" 
		elseif P.modeData.la8==3 then
		P.modeData.la8T="Triple" 
		end
		if P.modeData.la9==1 then
		P.modeData.la9T="Single" 
		elseif P.modeData.la9==2 then
		P.modeData.la9T="Double" 
		elseif P.modeData.la9==3 then
		P.modeData.la9T="Triple" 
		end
		if P.modeData.la10==1 then
		P.modeData.la10T="Single" 
		elseif P.modeData.la10==2 then
		P.modeData.la10T="Double" 
		elseif P.modeData.la10==3 then
		P.modeData.la10T="Triple"
		end
		
	end,
    mesDisp=function(P)
        setFont(25)
		local Vari=P.modeData
		
		if (Vari.la1a-Vari.TechAmt)==0 and Vari.G2==1 and Vari.G3==1 and Vari.G4==1 and Vari.G5==1 and Vari.G6==1 and Vari.G7==1 and Vari.G8==1 and Vari.G9==1 and Vari.G10==1 then
			
			P:win()
		end
		
		local C=P.lastPiece
		GC.mStr("Get these:",-150,100)
		if (Vari.la1a-Vari.TechAmt)~=0 then
		GC.mStr("Techrash x" .. (Vari.la1a-Vari.TechAmt),-150,125)
		else Vari.G2=1
		end
		--GC.mStr(Vari.IDg2T .. " Spin " .. Vari.la2T,-150,175)
		--GC.mStr(Vari.la2,-150,200)
		--GC.mStr(Vari.IDg3,-150,175)
		
		--GC.mStr(Vari.IDg4,-150,200)
		--GC.mStr(Vari.IDg5,-150,225)
		--GC.mStr(Vari.IDg6,-150,250)
		--GC.mStr(Vari.IDg7,-150,275)
		--GC.mStr(Vari.IDg8,-150,300)
		--GC.mStr(Vari.IDg9,-150,325)
		--GC.mStr(Vari.IDg10,-150,350)
		
		if C.id==Vari.IDg2 and C.row==Vari.la2 then
			Vari.G2=1
		end
		if Vari.G2~=1 then
			GC.mStr(Vari.IDg2T .. " " .. Vari.la2T,-150,150) --NOT spin.
		end
		
		
		if C.id==Vari.IDg3 and C.row==Vari.la3 then
			Vari.G3=1
		end
		if Vari.G3~=1 then
			GC.mStr(Vari.IDg3T .. " " .. Vari.la3T,-150,175) --NOT spin.
		end
		
		
		if C.id==Vari.IDg4 and C.row==Vari.la4 and C.spin then
			Vari.G4=1
		end
		if Vari.G4~=1 then
			GC.mStr(Vari.IDg4T .. " Spin " .. Vari.la4T,-150,200) 
		end
		
		
		if C.id==Vari.IDg5 and C.row==Vari.la5 and C.spin then
			Vari.G5=1
		end
		if Vari.G5~=1 then
			GC.mStr(Vari.IDg5T .. " Spin " .. Vari.la5T,-150,225) 
		end
		
		
		if C.id==Vari.IDg6 and C.row==Vari.la6 and C.spin then
			Vari.G6=1
		end
		if Vari.G6~=1 then
			GC.mStr(Vari.IDg6T .. " Spin " .. Vari.la6T,-150,250) 
		end
		
		
		if C.id==Vari.IDg7 and C.row==Vari.la7 and C.spin then
			Vari.G7=1
		end
		if Vari.G7~=1 then
			GC.mStr(Vari.IDg7T .. " Spin " .. Vari.la7T,-150,275) 
		end
		
		
		if C.id==Vari.IDg8 and C.row==Vari.la8 and C.spin then
			Vari.G8=1
		end
		if Vari.G8~=1 then
			GC.mStr(Vari.IDg8T .. " Spin " .. Vari.la8T,-150,300) 
		end
		
		
		if C.id==Vari.IDg9 and C.row==Vari.la9 and C.spin then
			Vari.G9=1
		end
		if Vari.G9~=1 then
			GC.mStr(Vari.IDg9T .. " Spin " .. Vari.la9T,-150,325) 
		end
		
		
		if C.id==Vari.IDg10 and C.row==Vari.la10 and C.spin then
			Vari.G10=1
		end
		if Vari.G10~=1 then
			GC.mStr(Vari.IDg10T .. " Spin " .. Vari.la10T,-150,350) 
		end
		
		--if Vari.sst==0 then
		--	GC.mStr("S-Spin Triple",-150,150)
		--end
		--if Vari.zss==0 then
		--	GC.mStr("z-Spin Single",-150,175)
		--end
        --if Vari.ist==0 then
		--	GC.mStr("I-Spin Triple",-150,200)
		--end
		--if Vari.jsd==0 then
		--	mStr("J-Spin Double",-150,225)
		
		--end
		
    end,
    hook_drop=function(P)
	local C=P.lastPiece
	local Vari=P.modeData
        if C.row>0 then
			if C.id==7 and C.row==4 then
			Vari.TechAmt=Vari.TechAmt+1
			end
			if (Vari.la1a-Vari.TechAmt)==-1 then
			Vari.TechAmt=Vari.TechAmt-1
			end
			--Vari.tsd=1
			--end
			--if C.id==2 and C.row==3 and C.spin then --s triple spin
			--Vari.sst=1
			--end
			--if C.id==1 and C.row==1 and C.spin then --z single spin
			--Vari.zss=1
			--end
			--if C.id==7 and C.row==3 and C.spin then -- i triple spin
			--Vari.ist=1
			--end
			--if C.id==3 and C.row==2 and C.spin then -- j double spin
			--Vari.jsd=1
			--end
		end
    end
}
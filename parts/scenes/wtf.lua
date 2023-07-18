local gc=love.graphics

local scene={}

function scene.enter()
    -- BG.set('league')
    -- BGM.play('exploration')
end

function scene.draw()
    gc.setColor(COLOR.Z)
    setFont(80)
    GC.mStr("Techmino WTF",640,40)
	setFont(35)
	GC.mStr("This game uses a different save directory to not conflict with Techmino.\nIt's recommended you only import Settings and Virtual Key Layout\nfrom Statistics > Data Management\nOnly English supported!\nGood luck, have fun!",640,170)
	setFont(100)
    -- drawSelfProfile()
    -- drawOnlinePlayerCount()
end
scene.widgetList={
    -- WIDGET.newKey{name='setting',x=1200,y=160,w=90,h=90,font=60,fText=CHAR.icon.settings,code=goScene'setting_game'},
    WIDGET.newKey{name='start',x=640,y=575,w=760,h=140,font=60,code=function() SCN.back() end},
    -- WIDGET.newButton{name='back',x=1140,y=640,w=170,h=80,sound='back',font=60,fText=CHAR.icon.back,code=backScene},
}

return scene

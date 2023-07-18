local logged

local scene={}

local function _dumpCB(T)
    love.system.setClipboardText(STRING.packText(TABLE.dump(T)))
    MES.new('check',text.exportSuccess)
end
local function _parseCB()
    local _
    local s=love.system.getClipboardText()

    -- Decode
    s=STRING.unpackText(s)
    if not s then MES.new('error',text.dataCorrupted) return end

    s=loadstring(s)
    if s then
        setfenv(s,NONE)
        return s()
    end
end
scene.widgetList={
    WIDGET.newText  {name='export',     x=55,y=45,color='lY',align='L',font=50},
    WIDGET.newKey   {name='unlock',   x=190,y=170,w=280,h=100,color='gray',code=function() MES.new("error","Cannot export! Not supported!",2.62) end},-- _dumpCB(RANKS) end},
    WIDGET.newKey   {name='data',     x=490,y=170,w=280,h=100,color='gray',code=function() MES.new("error","Cannot export! Not supported!",2.62) end},-- _dumpCB(STAT) end},
    WIDGET.newButton{name='setting',  x=790,y=170,w=280,h=100,color='lY',code=function() _dumpCB(SETTING) end},
    WIDGET.newButton{name='vk',       x=1090,y=170,w=280,h=100,color='lY',code=function() _dumpCB(VK_ORG) end},

    WIDGET.newText  {name='import',     x=55,y=265,color='lR',align='L',font=50},
    WIDGET.newKey   {name='unlock',     x=190,y=390,w=280,h=100,color='gray',
        code=function()
            MES.new("error","DO NOT CHEAT!\nDO NOT CHEAT! DO NOT CHEAT!\nDO NOT CHEAT! DO NOT CHEAT! DO NOT CHEAT!",2.62) 
            -- local D=_parseCB()
            -- if D then
            --     TABLE.cover(D,RANKS)
            --     for k,v in next,MODE_UPDATE_MAP do
            --         if RANKS[k] then
            --             RANKS[v]=RANKS[k]
            --             RANKS[k]=nil
            --         end
            --     end
            --     saveProgress()
            --     MES.new('check',text.importSuccess)
            -- else
            --     MES.new('error',text.dataCorrupted)
            -- end
        end},
    WIDGET.newKey   {name='data',     x=490,y=390,w=280,h=100,color='gray',
        code=function()
            MES.new("error","DO NOT CHEAT!\nDO NOT CHEAT! DO NOT CHEAT!\nDO NOT CHEAT! DO NOT CHEAT! DO NOT CHEAT!",2.62)
            -- local D=_parseCB()
            -- if D then
            --     TABLE.update(D,STAT)
            --     saveStats()
            --     MES.new('check',text.importSuccess)
            -- else
            --     MES.new('error',text.dataCorrupted)
            -- end
        end},
    WIDGET.newButton{name='setting',  x=790,y=390,w=280,h=100,color='lR',
        code=function()
            local D=_parseCB()
            if D then
                TABLE.update(D,SETTING)
                applySettings()
                saveSettings()
                MES.new('check',text.importSuccess)
            else
                MES.new('error',text.dataCorrupted)
            end
        end},
    WIDGET.newButton{name='vk',       x=1090,y=390,w=280,h=100,color='lR',
        code=function()
            local D=_parseCB()
            if D then
                TABLE.update(D,VK_ORG)
                saveFile(VK_ORG,'conf/virtualkey')
                MES.new('check',text.importSuccess)
            else
                MES.new('error',text.dataCorrupted)
            end
        end},

    WIDGET.newText  {name='couldSave',x=55,y=485,color='lB',align='L',font=50},
    WIDGET.newText  {                 x=55,y=550,color='C' ,align='L',font=30, fText="Not support on Techmino WTF!"},
    WIDGET.newButton{name='back',     x=1140,y=640,w=170,h=80,sound='back',font=60,fText=CHAR.icon.back,code=backScene},
}

return scene

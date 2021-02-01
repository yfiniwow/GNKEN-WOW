function KENGNer() 
    local gnkenmsg = "gn ken o/"
    local frame = CreateFrame("FRAME", "KENGNerFrame")
    frame:RegisterEvent("CHAT_MSG_GUILD")

    local function eventHandler(self, event, msg, author, lang, ...)
        vselfname, vselfrealm = UnitName("player")
        if string.find(author, vselfname) then
        else -- someone else's message
            if string.find(msg, gnkenmsg) then
            else -- general message
                if string.find(msg, "night") or string.find(msg, "gn ") then
                    SendChatMessage(gnkenmsg, "GUILD")
                end
            end
        end    
    end
    frame:SetScript("OnEvent", eventHandler)
end
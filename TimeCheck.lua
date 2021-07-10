function Initialize()
    Morning = tonumber(SKIN:GetVariable('Morning'))
    Afternoon = tonumber(SKIN:GetVariable('Afternoon'))
    Evening = tonumber(SKIN:GetVariable('Evening'))
    Night = tonumber(SKIN:GetVariable('Night'))
end

function SetText(text)
    return SKIN:Bang('!SetOption', 'Good', 'Text', text)
end

function Update()
    Time = tonumber(os.date("%H"))
    if (Time >= Morning and Time < Afternoon)
    then
        SetText('Good morning!')
    elseif (Time >= Afternoon and Time < Evening)
    then
        SetText('Good afternoon!')
    elseif (Time >= Evening and Time < Night)
    then
        SetText('Good evening!')
    elseif (Time >= Night or Time < Morning)
    then
        SetText('Good night!')
    end
end
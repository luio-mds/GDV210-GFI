function create_fade(_target_room)
{
    var fadeOut = instance_create_layer(0, 0, "Fade", obj_fade);
    fadeOut.target_room = _target_room;
    return fadeOut;
}

function updateText() 
{
    // Calculate dynamic numbers based on health
    var healthFactor = max(0, 100 - global.player_health) / 100; // 0 to 1 scale
    
    var accountsBlocked = floor(2 + (healthFactor * 248)); // 2 to 250
    var channelsSubscribed = floor(17 + (healthFactor * 283)); // 17 to 300
    var friendsRemaining = floor(35 - (healthFactor * 35)); // 35 to 0
    
    // Format the text with line breaks
    currentText = "Status: " + "\n\n\n";
    currentText += "Chirp Accounts Blocked: " + string(accountsBlocked) + "\n\n";
    currentText += "WeTube Channels Subscribed: " + string(channelsSubscribed) + "\n\n";
    currentText += "Friends: " + string(friendsRemaining);
}
if (!hasChosen)
{
    var pick;
    var canUseSprites = (global.player_health < 70) && (ds_list_size(spriteList) > 0);
    
    if (canUseSprites)
	{
        pick = irandom(1); // 0 = text, 1 = sprite
    } 
	else 
	{
        pick = 0;
    }
    
    if (pick == 0) 
	{
        updateText(); // Update text with current health
        drawText = true;
        drawSprite = false;
    } 
	else 
	{
        var spriteIndex = irandom(ds_list_size(spriteList)-1);
        currentSprite = spriteList[| spriteIndex];
        ds_list_delete(spriteList, spriteIndex);
        drawText = false;
        drawSprite = true;
    }
    
    hasChosen = true;
}
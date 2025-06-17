spriteList = ds_list_create();
ds_list_add(spriteList, spr_phoneMessage1);
ds_list_add(spriteList, spr_phoneMessage2);

// Text setup
baseText = "Accounts Blocked: {0}\nChannels Subscribed: {1}\nFriends: {2}";
currentText = "";
updateText();

currentSprite = -1;
drawSprite = false;
drawText = false;
hasChosen = false;
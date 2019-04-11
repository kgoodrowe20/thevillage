"The Village" by kgoodrowe20

When play begins: 
	say "You awake, cold and wet. Your clothes are soaked, and the only source of heat is the fire that you are huddled by. In the distance, you hear a horde of robots, and you realize they are coming to get you."

Hut is a room. The description is "A hut that you found yourself awake in. Shelves line the wooden walls, cluttered with various tools and junk. There is a large steel door to the east, and another exit to the west. By the steel door there is a terminal with a red/blue/green color scheme."

Shelves is scenery in hut. "Hammers, nails, wire cutters, and other tools are scattered all over the shelves. There is a bright red toolbox sitting on one of the shelves. There's a shovel behind the shelves. Next to the shelves, you can see an open metal box attached to the wall. There are wires inside."

	understand "shelf" as shelves.
	
Every turn: 
	if Boltz is in a room (called the current space): 
		let next space be a random room which is adjacent to the current space; 
		if Boltz is visible, say "Boltz heads to [the next space]. ";
		move Boltz to next space;
		if Boltz is visible, say "Boltz arrives from [the current space]. He greets you with the integrated monitor on his chest."

the horde is a man.

Every turn: 
	if horde is in a room (called the current space): 
		let next space be a random room which is adjacent to the current space; 
		if horde is visible, end the story saying "The horde rushes you, and you get attacked.";
		move horde to next space;
		if horde is visible, end the story saying "The horde rushes you, and you get attacked.";
	If horde is in a room adjacent to player:
		say "you hear the horde nearby"
		

[add warning for horde]
	
tools is scenery in hut. "Assorted tools."

junk is scenery in hut. "Worthless trash."

the toolbox is an undescribed container in hut.
understand "toolbox" as the toolbox.

wire cutters is a thing in toolbox. The description is "A rusted pair of wire cutters. The blade still seems sharp though."

	understand "wire cutter" as wire cutters.

Pliers is an undescribed thing in hut. The description is "This would be useful if it wasn't broken."

Hammer is an undescribed thing in hut. The description is "A fragile hammer. How useless!"

	understand "hammers" as hammer.

gloves is a thing in toolbox. It is wearable. The description is "Worn leather gloves."

Nails is an undescribed thing in hut. The description is "Some old, rusty nails."

Shovel is an undescribed thing in hut. The description is "An old, rusty shovel."

Wires are scenery in hut. "There are three wires: red, green, and blue." 

	understand "metal box" as wires.

red wire is scenery in hut. the description is "The red wire has the number 6 printed on it."

blue wire is scenery in hut. the description is "The blue wire has the number 8 printed on it."

green wire is scenery in hut. the description is "The green wire has the number 2 printed on it."

a manual is a thing in toolbox.
understand "manual" as a manual.	

instead of cutting wires:
	say "You don't know how to work electronics; it's not safe to mess with live wire. Perhaps find something to help you?"
	
instead of cutting red wire:
	say "You don't know how to work electronics; it's not safe to mess with live wire. Perhaps find something to help you?"
	
instead of cutting blue wire:
	say "You don't know how to work electronics; it's not safe to mess with live wire. Perhaps find something to help you?"
	
instead of cutting green wire:
	say "You don't know how to work electronics; it's not safe to mess with live wire. Perhaps find something to help you?"
	
[tools/manual is just to throw the player off]

steel door is a door. it is locked. it is east of hut and west of Walkway. The description is "A large, industrial steel door."

terminal is scenery in hut. 

instead of examining terminal:
	say "The terminal says: YOU ARE BEING RECORDED. PLEASE SAY THE PASSWORD INTO THE TERMINAL."

passunlocking is an action applying to nothing.	
understand "682" as passunlocking.
understand "six eight two" as passunlocking.
understand "six hundred eighty two" as passunlocking.
understand "six hundred eighty-two" as passunlocking.
understand "six eighty two" as passunlocking.
understand "six eighty-two" as passunlocking.

incorrectpass is an action applying to nothing.

understand "628" as incorrectpass.
understand "286" as incorrectpass.
understand "268" as incorrectpass.
understand "862" as incorrectpass.
understand "826" as incorrectpass.

instead of incorrectpass:
	say "The terminal says: INCORRECT PASSWORD, PLEASE TRY AGAIN."

instead of passunlocking:
	say "The terminal says: CORRECT PASSWORD, UNLOCKING DOOR.";
	say "The door clicks.";
	say "You hear the roar of the horde to the distant west.";
	now steel door is unlocked;
	now horde is in wasteland.
	

For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.

Wasteland is a room. It is west of Yard. "An empty, dead looking field."

Barrens is a room. It is south of wasteland. "Somehow, this field is even deader than the wasteland."

Lake is a room. It is east of Barrens and west of Corn field. "A lake that appears to have frozen over solid."


Yard is a room. It is west of hut. "A run down yard, complete with a snowed-out garden."


[Before going from the hut to the yard:
	dog is now following player.]

[dog in yard, dog is a follower]

Walkway is a room. "[if player is holding glowing screw] The walkway is a pathway outside. The snow is billowing and piling up in large amounts. There is a mountain to the north. To the east you see the faint glow of a distant village.[otherwise]The walkway is a pathway outside. The snow is billowing and piling up in large amounts. There is a mountain to the north, with a fence blocking your way. To the east you see the faint glow of a distant village."
 
Fence is scenery in walkway.

glowing screw is a thing. The description is "A metal screw that emits a bright blue hue."

instead of cutting fence:
	say "You cut down the fence, gaining access to the mountain. You see a glowing screw in the rubble and take it.";
	change south exit of mountain to walkway;
	change north exit of walkway to mountain;
	now player is carrying glowing screw.
	
[give the player glowing screw]
	
instead of dropping glowing screw:
	say "You might need that!"

[cut down fence to access mountain]

Mountain is a room. 

Summit is a room. It is north of mountain.
	holy battery is a thing in summit.

Corn field is a room. It is south of walkway.

Meadow is a room. It is south of Corn field.
	tree is scenery in meadow.

Village is a room. It is east of Walkway. The description is "The village is nearly abandoned, with empty houses and damaged buildings. The walkway is to the west, and you can see a church to the east."

houses is scenery in village. "Broken down houses line the edge of the village. Behind one of them, you spot an axe."
	Boltz is a man in village.
	axe is an undescribed thing in village. the description is "A heavy, rusted woodcutter's axe."
	

Church is a room. It is east of village.
	altar is scenery in church.
	
	
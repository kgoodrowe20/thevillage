"The Village" by kgoodrowe20

When play begins: 
	say "You awake, cold and wet. Your clothes are soaked, and the only source of heat is the fire that you are huddled by. In the distance, you hear a horde of robots, and you realize they are coming to get you.";
	say "You are immensely hungry, your goal is to find food."

Hut is a room. The description is "A hut that you found yourself awake in. Shelves line the wooden walls, cluttered with various tools and junk. There is a large steel door to the east, and another exit to the west. By the steel door there is a terminal with a red/blue/green color scheme."

Shelves is scenery in hut. "Hammers, nails, wire cutters, and other tools are scattered all over the shelves. There is a bright red toolbox sitting on one of the shelves. There's a shovel behind the shelves. Next to the shelves, you can see an open metal box attached to the wall. There are wires inside."

understand "shelf" as shelves.

a robot is a thing. It is in Village. it is an open openable container. The description is "A rusty robot with the word 'Boltz' inscribed on its chest. It seems to be missing a screw."

understand "robot" as the robot.
understand "the robot" as the robot.

Boltz is a man.

instead of inserting glowing screw into robot:
	say "The robot powers on. It greets you with an automated message: I AM BOLTZ, PERSONAL ASSISTANCE DEVICE. HOW MAY I HELP YOU TODAY?";
	remove robot from play;
	move boltz to village.

After asking Boltz about "horde", say "He beeps, almost as if a warning."
After asking Boltz about "food", say "He boops and makes a cross with his arms."
After asking Boltz about "clothes", say "He shrugs."
After asking Boltz about "battery", say "He points towards the church excitedly."
After asking Boltz about "holy battery", say "He points towards the church excitedly."
After asking Boltz about "wasteland", say "He shakes his head."
After asking Boltz about "barrens", say "He shakes his head."

the horde is a man.

The description of the player is "Your clothes are wet, you're tired, and you're hungry."

Every turn: 
	if horde is in a room (called the current space): 
		let next space be a random room which is adjacent to the current space; 
		if horde is visible, end the story saying "The horde rushes you, and you get attacked.";
		move horde to next space;
		if horde is visible, end the story saying "The horde rushes you, and you get attacked.";
	If horde is in a room adjacent to player:
		say "The horde is close."
[ends the game when player is in room with the horde]
		
Every turn:
	   let the way be the best route from the location to horde; 
           if the way is a direction, say "The sounds of the horde come from the [way]." 
[mrs. kiang wrote this code.]	


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

a manual is a thing in toolbox. the description is "This manual would've been useful if the pages weren't torn out."

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
[i created a verb to use to unlock the door when the correct password is spoken.]


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
	now steel door is unlocked;
	now horde is in wasteland.
	

For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.

Wasteland is a room. It is west of Yard. "An empty, dead looking field. There is a yard to the east, and the barrens are south."

Barrens is a room. It is south of wasteland. "Somehow, this field is even deader than the wasteland. The wasteland is north and a lake is east."

Lake is a room. It is east of Barrens and west of Corn field. "A lake that appears to have frozen over solid. The barrens are to the west, and a corn field is to the east."

ice is scenery in lake. "Slippery and slide-y."

icebreak is an action applying to nothing.

understand "break ice" as icebreak.

diggy is an action applying to nothing.

understand "dig" as diggy.

instead of diggy:
	say "What's the use?"

instead of icebreak:
	say "[if player is holding axe]You could, but should you? [otherwise]How do you expect to do that?"

Yard is a room. It is west of hut. "A run down yard, complete with a snowed-out garden. A hut is to the east, and the wasteland is to the west."

garden is scenery in yard. "A small, wilted garden."

Walkway is a room. "[if player is holding glowing screw] The walkway is a pathway outside. The snow is billowing and piling up in large amounts. There is a mountain to the north. To the east you see the faint glow of a distant village.[otherwise]The walkway is a pathway outside. The snow is billowing and piling up in large amounts. There is a mountain to the north, with a fence blocking your way. There are cracks in the fence. To the east you see the faint glow of a distant village."
 
Fence is scenery in walkway. "Seems cuttable."

glowing screw is a thing. The description is "A metal screw that emits a bright blue hue."

instead of cutting fence:
		say "You cut down the fence, gaining access to the mountain. You see a glowing screw in the rubble and take it.";
	change south exit of mountain to walkway;
	change north exit of walkway to mountain;
	now player is carrying glowing screw.

[give the player glowing screw]
	
instead of dropping glowing screw:
	say "You might need that! But then again, maybe not."

[cut down fence to access mountain]

Mountain is a room. "A snowy mountain path. The summit is to the north, the walkway is to the south. "

Summit is a room. It is north of mountain. "After a long trek up the mountain, you reach the summit. You can see everything from up here! There is not much here except for a pile of rocks and a shrine. The mountain is to the south."
	
	rocks is scenery in summit. The description is "A pile of stones."
	
	rock is an undescribed thing in summit. The description is "A stone."
	
	shrine is scenery in summit. The description is "A shrine with what appears to be a glowing battery sitting inside it." 
	
	understand "battery" as holy battery.
	
	understand "glowing battery" as holy battery.
	
	holy battery is an undescribed thing in summit. The description is "A glowing battery."

Corn field is a room. It is south of walkway. "A supposed corn field, but no corn grows here. The walkway is to the north, the meadow is to the south, and the lake is to the west."

Meadow is a room. It is south of Corn field. The description is "A nice little meadow in the summertime, probably; now it is covered in snow, and has a large, naked tree in the center. The corn field is to the north."

tree is scenery in meadow. "A big, old oak."

instead of cutting tree:
	say "That would waste too much energy."

Village is a room. It is east of Walkway. The description is "The village is nearly abandoned, with empty houses and damaged buildings. The houses may hold something interesting in the houses... The walkway is to the west, and you can see a church to the east."

houses is scenery in village. "Broken down houses line the edge of the village. Behind one of them, you spot an axe."

understand "slot" as altar.	

axe is an undescribed thing in village. the description is "A heavy, rusted woodcutter's axe."
	
Church is a room. It is east of village. "An average looking church, except the altar at the front looks a little strange."

altar is scenery in church. it is an open openable container. "Upon closer inspection, there is a small slot in the altar. Perhaps something could be inserted into it?"

instead of inserting holy battery into altar:
	say "You put the battery into the altar";
	remove holy battery from play;
	end the story saying "The altar dispenses some food, which you eat, causing you to wake up in your bed! It was a dream the whole time!"
	
[shortest route to win:
say 682 to unlock the door
east x2
take axe
west
cut  fence
north x2
take holy battery (from shrine)
south x2
east x2
put holy battery in altar]
	
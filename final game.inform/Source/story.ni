"The Village" by kgoodrowe20

When play begins: 
	say "You awake, cold and wet. Your clothes are soaked, and the only source of heat is the fire that you and your dog are huddled by."

Hut is a room. The description is "A hut that you found yourself awake in. Shelves line the wooden walls, cluttered with various tools and junk. There is a large steel door to the east, and another exit to the west."

Shelves is scenery in hut. "Hammers, nails, wire cutters, and other tools are scattered all over the shelves. There is a bright red toolbox sitting on one of the shelves. There's a shovel behind the shelves. Next to the shelves, you can see an open metal box attached to the wall. There are wires inside."

	understand "shelf" as shelves.
	
tools is scenery in hut. "Assorted tools."

junk is scenery in hut. "Worthless trash."

toolbox is an undescribed container in hut.

wire cutters is a thing in toolbox. The description is "A rusted pair of wire cutters. The blade still seems sharp though."

	understand "wire cutter" as wire cutters.

Pliers is an undescribed thing in hut. The description is "This would be useful if it wasn't broken."

Hammer is an undescribed thing in hut. The description is "A fragile hammer. How useless!"

	understand "hammers" as hammer.

gloves is a thing in toolbox. It is wearable. The description is "Worn leather gloves."

Nails is an undescribed thing in hut. The description is "Some old, rusty nails."

Shovel is an undescribed thing in hut. The description is "An old, rusty shovel."

Wires are scenery in hut. "There are three wires: red, blue, and green." 

	understand "metal box" as wires.

red wire is scenery in hut.

blue wire is scenery in hut.

green wire is scenery in hut.

instead of cutting red wire:
	if player is wearing gloves, say "Nothing happened.";
		otherwise end the story saying "You get zapped by the exposed wire and faint. Look for something to protect yourself from the electricity." 
	
instead of cutting blue wire:
	if player is wearing gloves, say "Nothing happened.";
		otherwise end the story saying "You get zapped by the exposed wire and faint. Look for something to protect yourself from the electricity." 
		
instead of cutting green wire:
	move key to hut;
	if player is wearing gloves, say "You cut the green wire and a part of the wall slides out to expose a key that can be used on the steel door.";
		otherwise end the story saying "You get zapped by the exposed wire and faint. However, a key fell out of the wall. Look for something to protect yourself from the electricity." 

steel door is a door. it is locked. it is east of hut and west of Walkway. The description is "A large, industrial steel door."

key is a thing. it unlocks steel door.

For printing a locale paragraph about a door (called the item) 
    (this is the don't mention doors in room descriptions rule): 
    set the locale priority of the item to 0; 
    continue the activity.

Yard is a room. It is west of hut. 

dog is a man in yard.

[Before going from the hut to the yard:
	dog is now following player.]

[dog in yard, dog is a follower]

Walkway is a room. "The walkway is a pathway outside. The snow is billowing and piling up in large amounts. There is a mountain to the north, with a fence blocking your way."
 
Fence is scenery in Walkway.

[cut down fence to access mountain]

Mountain is a room. It is north of Walkway. 

Summit is a room. It is north of mountain.
	holy battery is a thing in summit.

Corn field is a room. It is south of walkway.

Meadow is a room. It is south of Corn field.
	tree is scenery in meadow.

Village is a room. It is east of Walkway.
	houses is scenery in village.
	boltz is a man in village.
	axe is a thing in village.

Church is a room. It is east of village.
	altar is scenery in church.
	
	
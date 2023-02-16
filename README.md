# Using the datapack

## Items

-Run the **/function demi:getitems** command to get the items in this datapack

-While holding these items, sneak twice quickly to change between their modes. The current mode will be displayed above your hotbar

### Display entity placer

-Right click while holding an item in your offhand to use
-In block and item mode, the displayed block/item will be the same as the **item in your offhand**
-In text mode, the displayed text will be the same as the **name of the item in your offhand**

### Display entity editor

-Selector mode: In this mode, all display entites will emit light red particles. Right click on the particles of a display entity to select it. All selected entities will emit light green particles, and glow if they are block or item displays. To deselect an entity, right click anywhere else. Selected entites have the **demi_selected** tag.

-Scale/translation/left rotation/right rotation mode: When switching to one of these modes, three block displays will appear, representing each axis (red is the x axis, green is the y axis, and blue is the z axis). Click on an axis's particles to select that axis. Move on the selected axis to change the value of the selected transformation (moving in the positive direction will increase and moving in the negative direction will decrease the value). Like in select mode, clicking somewhere else other than the axis deselects it and keeps the changes you've made. Note that selecting an axis resets the transformation to 0 on that axis.

-Position mode: This mode is similiar to the transformation modes, except it moves the entity instead of applying a transformation to it. It also doesn't set the coordinates to 0 if you select an axis.

-Settings mode: in this mode, right clicking will bring up a menu in your chat. Using this menu you can edit various properties of the entity, such as its rotation, brightness, shadow, or you can duplicate it, change the displayed block/item/text, or delete it.

## Commands

-There are various commands you can use to set each transformation to a precise value.

The commands' names are structured like this:
**/trigger demi\_set\_\<transformation name>\_\<axis> set \<value>**
  
-When used to set the scale or translation of the entity, <value> gets divided by 100
-When used to set the left or right rotation of the entity, <value> represents the counterclockwise rotation of the entity in degrees

-There are two commands, **/function demi:transformations/interpolation** and **/function demi:transformations/no_interpolation** that set an entity's transformation from its scores (with or without interpolation, respectively)
-You have to run these commands as and at the display entities!

-The scoreboards' names are **\<transformation>_\<axis>**
  
-The values get processed exactly the same as in the **/demi_set_\<transformation name>_\<axis>** commands
  
-There is also an **interpolation_duration** scoreboard, that specifies the interpolation's duration in ticks
  
Here's an example of how to use these scoreboards and commands:
  
```
execute as @e[tag=anim] at @s run function animation:example

#animation:example#
  
scoreboard players set @s translation_x 200
scoreboard players set @s scale_y 50
scoreboard players set @s left_rotation_z 45
scoreboard players set @s interpolation_duration 100
function demi:transformations/interpolation
```
  
-The pack also includes the **display_entites** entity tag that contains all 3 display entites

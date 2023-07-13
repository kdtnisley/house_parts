include <BOSL2/std.scad> //useful library of tools
include <appliances.scad> //defines all the appliances

//This is a comment. The renderer doesn't see anything you put after //

//openSCAD's native units are millimeters. All measurements in cm*10

//Appliances are defined with (0,0,0) at the lowest leftmost corner as seen when using the appliance
//Kitchen is defined with (0,0,0) as the corner directly to your left when you step in. Diagram as follows.

// |--------------------|
// |        sink        |
// |                    |
// |                    |
// |                    |
// |                    _
// |                    
// |                    _
// (0,0,0)_|doorway|____|

//COLORS
// GREY - appliances
// BLUE - utilities such as water, power
// GREEN - openings such as doors, windows, vent hood exhaust
// brown/ORANGE - woodwork

//copy and paste for another object
//translate([0,0,0])
//rotate([0,0,0])
//cube();

//define size of kitchen
//cube([89.5*2*10+80*10,309*10,240*10]); //full dimensions
width = 89.5*2*10+80*10; //two wall sections + doorway
depth = 309*10; //approximate, trim in the way
square([width,depth]);

//add refrigerator
translate([94*10,0,0])
rotate([0,0,90])
color_this("grey") cube([83*10,94*10,176*10]); //Includes door handles in Y dimension

//add stove
translate([width,83*10,0]) //TODO: update to width of door, not width of fridge
rotate([0,0,90])
color_this("grey") cube([76*10,66*10,118*10]); //does NOT include door handle in Y dimension






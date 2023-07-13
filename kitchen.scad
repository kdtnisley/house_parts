include <BOSL2/std.scad> //useful library of tools

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
//color_this("grey") cube();

//define size of kitchen
//cube([89.5*2*10+80*10,309*10,240*10]); //full dimensions
width = 89.5*2*10+80*10; //two wall sections + doorway
depth = 309*10; //approximate, trim in the way
square([width,depth]);

//refrigerator
translate([94*10,0,0])
rotate([0,0,90])
color_this("grey") cube([83*10,94*10,176*10]); //Includes door handles in Y dimension

//stove
translate([width,92*10,0])
rotate([0,0,90])
color_this("grey") cube([76*10,66*10,118*10]); //does NOT include door handle in Y dimension

//toaster
translate([0,0,0])
rotate([0,0,0])
color_this("grey") cube([13*10,23*10,18.5*10]);

//electric kettle
translate([0,0,0])
rotate([0,0,0])
color_this("grey") cylinder(h=28*10,d=22*10,center = true);

//microwave
//note that standalone microwave will have different dimensions
translate([0,0,0])
rotate([0,0,0])
color_this("grey") cube([75.5*10,39*10,40*10]);

//doorway
translate([width,0,0])
rotate([0,0,90])
color_this("green") cube([92*10,1*10,240*10]); //door is not actually full height

//window
translate([89.5*10,depth,110*10]) //TODO: update window location
rotate([0,0,00])
color_this("green") cube([81*10,1*10,100*10]); //door is not actually full height
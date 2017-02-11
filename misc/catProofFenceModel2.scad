lWallStone = 696;
lWallWood = 300;
backWall = 165;
lSideSchuur = 245;
frontSchuur = 300;
rWall = 320;
h = 160; //an arbitrarily selected height

/* structural */
color("blue"){cube([3,lWallStone,h]);}
translate([0,lWallStone,0]){
	cube([3,lWallWood,h]);}
translate([0,lWallStone+lWallWood,0]){
	cube([backWall,3,h]);}
translate([backWall,(lWallStone+lWallWood)-lSideSchuur,0]){
	cube([3,lSideSchuur,h*2]);}
translate([backWall,(lWallStone+lWallWood)-lSideSchuur,0]){
	cube([frontSchuur,3,h*2]);}
translate([backWall+frontSchuur,(lWallStone+lWallWood)-lSideSchuur-rWall,0]){
	cube([3,rWall,h]);}

/* posts */
hPost = 200;
widthBikes = 150; //TODO measure
hBikePost = 300; //TODO measure
wPlanter = 80; //TODO measure
translate([0,0,0]){
	color("purple"){cube([6,6,hPost]);}}
translate([0,lWallWood+lWallStone,0]){
	color("purple"){cube([6,6,hPost]);}}
translate([0,(lWallWood+lWallStone)/3,0]){
	color("purple"){cube([6,6,hPost]);}}
translate([0,2*(lWallWood+lWallStone)/3,0]){
	color("purple"){cube([6,6,hPost]);}}
translate([backWall,lWallWood+lWallStone,0]){
	color("purple"){cube([6,6,hPost]);}}
/*bike shelter posts*/
translate([backWall+frontSchuur-(.3*widthBikes),(lWallStone+lWallWood)-lSideSchuur-6,0]){
	color("purple"){cube([6,6,hBikePost]);}}
translate([backWall+frontSchuur-(.3*widthBikes),(lWallStone+lWallWood)-lSideSchuur-(rWall/2),0]){
	color("purple"){cube([6,6,hBikePost]);}}
translate([backWall+frontSchuur-(.3*widthBikes),(lWallStone+lWallWood)-lSideSchuur-rWall,0]){
	color("purple"){cube([6,6,hBikePost]);}}
/*horizontal supports*/
translate([backWall+frontSchuur-(widthBikes*2/3),(lWallStone+lWallWood)-lSideSchuur-6,hBikePost-10]){
	color("purple"){cube([widthBikes/2,6,6]);}}
translate([backWall+frontSchuur-(widthBikes*2/3),(lWallStone+lWallWood)-lSideSchuur-(rWall/2),hBikePost-10]){
	color("purple"){cube([widthBikes/2,6,6]);}}
translate([backWall+frontSchuur-(widthBikes*2/3),(lWallStone+lWallWood)-lSideSchuur-rWall,hBikePost-10]){
	color("purple"){cube([widthBikes/2,6,6]);}}

/* angled supports */
translate([0,0,hPost]){
	rotate([0,45,0]){
	color("purple"){cube([6,6,50]);}}}
translate([0,(lWallWood+lWallStone)/3,hPost]){
	rotate([0,45,0]){
	color("purple"){cube([6,6,50]);}}}
translate([0,2*(lWallWood+lWallStone)/3,hPost]){
	rotate([0,45,0]){
	color("purple"){cube([6,6,50]);}}}
translate([0,lWallWood+lWallStone,hPost]){
	rotate([45,45,0]){
	color("purple"){cube([6,6,50]);}}}
translate([backWall,lWallWood+lWallStone,hPost]){
	rotate([45,0,0]){
	color("purple"){cube([6,6,50]);}}}

/* roof bike area */
translate([backWall+frontSchuur-widthBikes,(lWallStone+lWallWood)-lSideSchuur-rWall,hBikePost-10]){
	rotate([0,-10,0]){
	color("blue"){cube([(.7*widthBikes),rWall,3]);}}}
translate([backWall+frontSchuur-(.3*widthBikes),(lWallStone+lWallWood)-lSideSchuur-rWall,hBikePost+10]){
	rotate([0,20,0]){
	color("blue"){cube([(.3*widthBikes),rWall,3]);}}}

/* BOM
3 x hBikePost
3 x (widthBikes/2)
5 x hPost
5 x 50 (angled supports)
1 x bike roof (clear plexiglass)
electric fencing: 
 echo(lWallStone + lWallWood + backWall + lSideSchuur + frontSchuur + rWall); //2026
 + 226 + (437 * 2) //outer edge of roof garden
 * 2  // at least two wires around the whole thing, maybe 3
 + 300  //some extra for going to ground
bits to hold the wire, power, ground, etc.
bike rack x 4 bikes
netting to discourage cat escape
*/
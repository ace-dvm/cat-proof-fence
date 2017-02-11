//note that width of boards largely isn't figured in yet

hr = 10; //est. height of metal rim
ht = 5; //est. height of wood tiles

/* structural */
difference(){
	color("red"){cube([226,437,hr], false);}
	translate([(226-179)/2,0,1]){
		cube([179,396,hr]);}
}
wRRim = 21.5; //width of rim on R side
wFRim = 27.5; //width of rim on far side
rVent = 12; //radius of the vents
hVent = 30; //height of vents is a guess
vent1ToWall = 25;
vent2ToEdge = 26.5;
translate([226-(wRRim+5+rVent),vent1ToWall+rVent,0]){
	cylinder(hVent,rVent,rVent);}
translate([226-(wRRim+rVent),437-(wFRim+vent2ToEdge+rVent),0]){
	cylinder(hVent,rVent,rVent);}
topVent1 = vent1ToWall + 2*rVent;
bottVent2 = vent2ToEdge + 2*rVent;
insideVent2 = 2*rVent; //vent2 is adjacent to the R edge

/* walls for containers */
//TODO measure containers
hc = 40; //height container
wc = 50; //width container
lc = 100; //length container
translate([6,0,hr]){
	color("blue"){cube([3,437,hc+hr]);}}
translate([(226-6),vent2ToEdge+2*rVent,hr]){
	color("blue"){cube([3,310,hc+hr]);}}
translate([0,437,hr]){
	color("blue"){cube([226-(wc),3,hc+hr]);}}
//drainage pipe
translate([210,437,hr]){
	rotate([90,0,0]){
	cylinder(wc+2*rVent,5,5);}}

translate([wc,0,hr]){
	color("blue"){cube([3,(437-wc),hc+hr]);}}
translate([226-wc,topVent1,hr]){
	color("blue"){cube([3,310,hc+hr]);}}
translate([226-wc,437-wc,hr]){
	color("blue"){cube([3,wc,hc+hr]);}}
translate([wc,(437-wc),hr]){
	color("blue"){cube([(226-wc*2),3,hc+hr]);}}

translate([6,0,hr]){
	color("blue"){cube([wc,3,hc+hr]);}}
translate([226-wc,topVent1,hr]){
	color("blue"){cube([wc,3,hc+hr]);}}
translate([226-wc,437-(wFRim + vent2ToEdge + rVent*2),hr]){
	color("blue"){cube([wc,3,hc+hr]);}}


/* vertical supports for trellis */
translate([0,0,hr]){
	color("purple"){cube([6,6,200]);}}
translate([0,110,hr]){
	color("purple"){cube([6,6,200]);}}
translate([0,220,hr]){
	color("purple"){cube([6,6,200]);}}
translate([0,330,hr]){
	color("purple"){cube([6,6,200]);}}
translate([0,437,hr]){
	color("purple"){cube([6,6,200]);}}
translate([80,437,hr]){
	color("purple"){cube([6,6,200]);}}
translate([insideVent2,437,hr]){
	color("purple"){cube([6,6,200]);}}
translate([226,0,hr]){
	color("purple"){cube([6,6,200]);}}
translate([226,110,hr]){
	color("purple"){cube([6,6,200]);}}
translate([226,220,hr]){
	color("purple"){cube([6,6,200]);}}
translate([226,330,hr]){
	color("purple"){cube([6,6,200]);}}
translate([226,437,hr]){
	color("purple"){cube([6,6,200]);}}

/* floor beams */
translate([(226-179)/2,topVent1,0]){
	color("purple"){cube([179,6,5]);}}
translate([(226-179)/2,topVent1+120,0]){
	color("purple"){cube([179,6,5]);}}
translate([(226-179)/2,topVent1+240,0]){
	color("purple"){cube([179,6,5]);}}
translate([(226-179)/2,396-6,0]){
	color("purple"){cube([179,10,5]);}}
//note that we may need two boards or one wider board for the last one
//adjust distance between boards so they fit well with tiles

/* connect walls */
//position will depend on length of container
translate([0,lc,hr+hc]){
	color("silver"){cube([wc,6,2]);}}
translate([0,2*lc,hr+hc]){
	color("silver"){cube([wc,6,2]);}}
translate([0,3*lc,hr+hc]){
	color("silver"){cube([wc,6,2]);}}
translate([226-wc,topVent1+lc,hr+hc]){
	color("silver"){cube([wc,6,2]);}}
translate([226-wc,topVent1+2*lc,hr+hc]){
	color("silver"){cube([wc,6,2]);}}
translate([226-wc,topVent1+3*lc,hr+hc]){
	color("silver"){cube([wc,6,2]);}}
translate([226/2,437-wc,hr+hc]){
	color("silver"){cube([6,wc,2]);}}

//TODO decide what we're doing with vent2: just form a cut-out around it, or make that an exit to a walkway (or potential walkway) over the top of bike sheds
//TODO containers will have floor as well, but it is easier to see what's going on if I don't add it now.
//TODO plan to adjust height of floor so water drains correctly (into our yard). If we go with a two-container plan, consider how to drain R container

/* BOM
   flooring
   floor beams
   bottoms
   outsides
   insides
   tiles
next year:   
   vertical supports
   fencing/trellis
*/
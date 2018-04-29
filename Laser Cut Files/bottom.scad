totalWidth=150;
totalHeight=100;
drillRad=3/2;
nixieRad=23/2;
$fn=20;

difference(){
square([totalWidth,totalHeight]);
union(){
//mount holes
translate([6.35,6.35])
circle(drillRad);
translate([143.6,6.35])
circle(drillRad);
translate([6.35,93.6])
circle(drillRad);
translate([143.6,93.6])
circle(drillRad);

}
}
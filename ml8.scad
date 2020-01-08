id = 66;
bd = 32.7;

gapd = 42;
gaph = 20;
stack_h = 27.5;

to_back_plate = 35;
half_casting = 36;

block = bd/2;  
lip = 3;  


base();



translate([0,0,-half_casting]) rotate ([0,90,0] )holder();

module base() { 
 offset = half_casting + lip;
 
    
    difference() {
  cylinder(h = offset, d = id, $fn = 128);
  translate([-12,-id/2,-1]) cube(81);
  translate([-id/2,-gapd/2,-1]) cube([gaph,  gapd, offset + 10]);  

   
}
  translate([-12,-block/2,0]) cube([block+4,block,block]);
}



module holder() {
l = to_back_plate;    
    
difference() {
translate ([-12, -(bd + 4)/2, 0]) cube( [stack_h, bd + 4, l] );
translate([-13,0,lip/2]) rotate([0,90,0]) cylinder( d = bd, h = 30);

translate([-13,-(block+1)/2,20]) cube([bd,block+1,bd+10]);
}


}
    
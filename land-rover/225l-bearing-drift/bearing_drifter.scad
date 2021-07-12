// Hollow Radius of drifter
hr = 10;
// Outer diameter of bearing
od = 50;
// Inner diameter of bearing
id = 50 - 1.625 * 2;
// Drifter back thickness;
bt = 20;
// Drifter front thickness;
ft = 25;


// rotate_extrude() rotates a 2D shape around the Z axis. 
// Note that the 2D shape must be either completely on the 
// positive or negative side of the X axis.
color("red")
    rotate_extrude($fn = 90)
            polygon(points=[
                [hr,0],// donut hole radius
                [od/2,0],// Cam bearing OD radius
                [od/2,bt],// Drifter thickness
                [id/2,bt],// Cam bearing ID radius
                [id/2,bt+ft],// Drifter ID thickness
                [hr,bt+ft]
            ]);

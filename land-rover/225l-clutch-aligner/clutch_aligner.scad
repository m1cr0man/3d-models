// Bushing inner diameter
bd = 22.25;
// Teeth inner/lower diameter
td = 22.8;
// Bushing section length
bl = 40;
// Teeth section length
tl = 80;
// Thickness
thk = 3;
// Taper
tap = 0.1;

br = bd / 2;
tr = td / 2;

color("green")
rotate_extrude($fn = 90)
        polygon(points=[
            [tr + tap,0],  // Teeth end, lower OD
            [tr - tap,tl], // Teeth end, upper OD + length
            [br + tap,tl],  // Bushing end, lower OD
            [br - tap,tl+bl], // Bushing end, upper OD + length
            [br - thk,tl+bl], // Bushing end, upper ID
            [br - thk,0], // Teeth end, lower ID
        ]);

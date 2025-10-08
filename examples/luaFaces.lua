dofile("luaBitmap.lua")
sx = 320
sy = 240
for x = 1,sx do for y = 1,sy do
	draw(x,y,64,64+(y-1)//10,64+(y-1)//10)
end end
skin = {247,195,143}
skinc = math.random(20,100)/100
circf(sx//2,sy//2,math.floor(skin[1]*skinc),math.floor(skin[2]*skinc),math.floor(skin[3]*skinc),80,0.75,1.1)
nose = {math.random(-20,-8),math.random(-10,10),math.random(80,130)/100}
nosev = {{10,10},{-9,8},{10,-10}}
skinc = math.max(skinc-0.3,0.2)
line(sx//2+nosev[1][1]+nose[1],sy//2+10+nosev[1][2]*nose[3]+nose[2],sx//2+nosev[2][1]+nose[1],sy//2+10+nosev[2][2]*nose[3]+nose[2],math.floor(skin[1]*skinc),math.floor(skin[2]*skinc),math.floor(skin[3]*skinc))
line(sx//2+nosev[2][1]+nose[1],sy//2+10+nosev[2][2]*nose[3]+nose[2],sx//2+nosev[3][1]+nose[1],sy//2+10+nosev[3][2]*nose[3]+nose[2],math.floor(skin[1]*skinc),math.floor(skin[2]*skinc),math.floor(skin[3]*skinc))
mouth = math.random(-20,100)/100
mouth2 = math.random(30,110)/100
line(sx//2,sy//2+60,sx//2+30*mouth2,sy//2+60-mouth*15,math.floor(skin[1]*skinc),math.floor(skin[2]*skinc),math.floor(skin[3]*skinc))
line(sx//2,sy//2+60,sx//2-30*mouth2,sy//2+60-mouth*15,math.floor(skin[1]*skinc),math.floor(skin[2]*skinc),math.floor(skin[3]*skinc))
pupil = {math.random(0,255),math.random(0,255),math.random(0,255)}
eye = {math.random(-5,5),math.random(40,120)/100}
function drawEye(x,y,r,g,b,scl) circf(x,y,255,255,255,15,1,0.61*scl) circf(x,y,r,g,b,15,0.48,0.61*scl) circ(x,y,math.floor(skin[1]*skinc),math.floor(skin[2]*skinc),math.floor(skin[3]*skinc),15,40,1,0.61*scl) end
drawEye(sx//2+22+eye[1],sy//2-18,pupil[1],pupil[2],pupil[3],eye[2])
drawEye(sx//2-22-eye[1],sy//2-18,pupil[1],pupil[2],pupil[3],eye[2])
render("face")

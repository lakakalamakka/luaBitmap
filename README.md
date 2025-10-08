# luaBitmap
Lua module that helps with exporting/formatting bitmap images and drawing
This is able to:
- draw seperate pixels
- draw lines
- draw outlined&filled circles,ovals and rectangles
- procedurally draw pixel by pixel
To load this module in a lua program you must use `dofile("luaBitmap.lua")` (or whatever your luaBitmap file's filename is) at the start, set the image size on x and y by using `sx,sy = [x],[y]` (for x and y you can use any number you want) then you can either:
1. use `draw(x,y,r,g,b)` to draw a pixel
2. use `line(x1,y1,x2,y2,r,g,b)` to draw a line
3. use `rect(x1,y1,x2,y2,r,g,b)` to draw an outlined rectangle
4. use `rectf(x1,y1,x2,y2,r,g,b)` to draw a filled rectangle
5. use `circ(x,y,r,g,b,cr,s,csx,csy)` to draw an outlined circle. `s` stands for segments
6. use `circf(x,y,r,g,b,cr,csx,csy)` to draw a filled circle.
7. use `render(filename)` to render the bitmap file.
-- Optional: use `image={} for i=1,sx*sy do image[i]={255,255,255} end` to clear the image (additionally with any RGB value you'd like).
For both circle fuctions, `csx` and `csy` are scale factors, allowing for ellipses.

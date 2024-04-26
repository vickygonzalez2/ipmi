PImage miPaisaje;
void setup(){
size (800,400);

miPaisaje = loadImage ("montanas.jpg") ;
}

void draw (){
background(126,156,185);
noStroke();

//piso
fill (108,60,26);
rect (0,250,400,400);

//montanas
fill (67,109,155);
triangle (0,205,300,135,400,200);

fill(175,138,103);
triangle (30,250,190,165,350,250);

fill (160,119,90);
triangle(0,250,0,120,250,250);

fill (155,95,53);
triangle (0,190,100,250,0,250);
triangle (200,250,400,90,400,250);

//vallas
strokeWeight (16);
stroke (108,92,51);
line (206,302,206,400);

stroke (134,114,64);
line (0,295,217,295);

line (195,315,400,312);

//nubes
fill (129,129,129);
stroke (129,129,129);
ellipse (80,100,230,10);
ellipse (10,60,60,75);
ellipse (80,80,70,50);

fill (162,162,162);
stroke (162,162,162);
ellipse(290,65,210,10);
ellipse (365,30,80,75);
ellipse (300,50,60,35);

image (miPaisaje,400,0);

}

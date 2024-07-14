//Gonzalez Victoria
//86848/2
//Comision 2
//youtube:  https://youtu.be/SRHVOpdseoo

PImage imagenAlaIzq;
int cant = 20;
int tam, tam2, tam3;
float colorX = map (mouseX, 0, width, 0, 255);
float colorY = map (mouseY, 0, height, 0, 255);

void setup() {
  size(800, 400);
  noStroke();
  tam2 = 17;
  tam3 = 17;
  imagenAlaIzq = loadImage ("imagen.png");
}
void draw() {
  image (imagenAlaIzq, 0, 0);
  tam = width/cant;
  grilla (255);
  println (ladoDerecho());
  println (ladoIzq());
  image (imagenAlaIzq, 0, 0);
}

void keyPressed () {
  if (key == 'k') {
    cant -- ;
  }
  if (key == 'r') {
    reiniciar (17);
  }
}
void mousePressed() {
  if (ladoIzq () == true ) {
      cant += 2 ;
    }
}
  

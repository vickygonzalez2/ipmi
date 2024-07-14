void reiniciar (int reset) {
    cant = 20;
    tam2 = reset;
    tam3 = reset;
  }

void grilla (int relleno) {
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {

      if ((i+j) % 2 == 0) {
        pushMatrix ();
        colores0 (colorX, colorY);
        rect(i*tam, j*tam, tam, tam);
        popMatrix();

        fill (relleno);
        ellipse (i*tam+tam/2, j*tam+tam/2, tam2, tam3); //si le sumo la mitad de su diametro en x como en y, logro que se dibujen en el centro del cuadrado
      } else {
        fill (relleno);
        rect(i*tam, j*tam, tam, tam);

        colores1 (colorX, colorY);
        ellipse (i*tam+tam/2, j*tam+tam/2, tam2, tam3);
      }

      //text ( i + "," + j, i*tam, j*tam);
    }
  }
}

void colores0 (float colorX, float colorY) {
  colorX = map (mouseX, 0, width, 0, 255);
  colorY = map (mouseY, 0, height, 0, 255);
  fill (colorX, colorY);
}
void colores1 (float colorX, float colorY) {
  colorX = map (mouseX, 0, width, 0, 255);
  colorY = map (mouseY, 0, height, 0, 255);
  fill (colorY, colorX);
}

void circulos () {
  if ((tam2 == 0) && (tam3 == 0 )) {
    tam2 = 1;
    tam3 = 1;
  }
}

boolean ladoDerecho() {
  if (( mouseX > width/2 ) && (tam2 <= tam) && (tam3 <= tam)) {
    tam2 ++;
    tam3 ++;
    return true;
  } else {
    return false;
  }
}

boolean ladoIzq() {
  if ( mouseX < width/2 ) {
    tam2 --;
    tam3 --;
    circulos ();
    return true;
    
  } else {
    return false;
  }
}

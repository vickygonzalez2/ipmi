String texto, titulo, titulo2, titulo3, titulo4, titulo5, titulo6, titulo7, parrafo, parrafo2, parrafo3, parrafo4, parrafo5;
PImage pantalla1, pantalla2, pantalla2b, pantalla3, pantalla3b, pantalla4, pantalla5, pantalla5b, pantalla6, pantalla6b, pantalla7;
int tam, tam2, tam3, y;
float x, alpha, tam4;
color relleno;

void setup(){
 size (640, 480);
 textAlign (CENTER);

 texto = "inicio" ;
 
 titulo = "EDICIÓN LIMITADA";
 titulo2 = "Los Sims";
 titulo3 = "¿Cuáles son las opciones de juego?";
 titulo4 = "Crear tus personajes";
 titulo5 = "Construir viviendas";
 titulo6 = "Mantener estables las necesidades y sentimientos";
 titulo7 = "En conclusión";
 
 parrafo = "Los Sims es una serie de videojuegos de simulación\nsocial donde puedes crear tus propios personajes y\nestablecer vínculos entre ellos, ya sea amistoso,\nfamiliar, amoroso, etc. También, podrás construir\nviviendas y jugar libremente.";
 parrafo2 = "Su creador es Will Wright y ha sido desarrollado inicial-\nmente por Maxis. Fue publicado por Electronic\nArts (EA) en el año 2000.";
 parrafo3 = "Cada Sim tiene necesidades al\nigual que una persona, por ello\naparece una serie de barras\nindicadoras que las marcan.\nEstas barras, se actualizan a\nmedida que pasa el tiempo.";
 parrafo4 = "Todas son fundamentales para\nla vida de un Sim pero la más\nimportante es HAMBRE ya que\nsi está muy baja o en rojo,\nel Sim morirá. Por eso lo mejor\nes mantenerlas al máximo\no en verde.";
 parrafo5 = "Los Sims, es un juego muy divertido donde podrás \nexplayar tu creatividad como arquitecto o como \nnovelista montando tus propios dramas \ncon los personajes.";
 
 pantalla1 = loadImage ("imagen1.jpg");
 pantalla2 = loadImage ("imagen2.png");
 pantalla2b = loadImage ("imagen2b.jpg");
 pantalla3 = loadImage ("imagen3.png");
 pantalla3b = loadImage ("imagen3b.jpg");
 pantalla4 = loadImage ("imagen4.jpg");
 pantalla5 = loadImage ("imagen5.jpg");
 pantalla5b = loadImage ("imagen5b.jpg");
 pantalla6 = loadImage ("imagen6.jpg");
 pantalla6b = loadImage ("imagen6b.jpg");
 pantalla7 = loadImage ("imagen7.jpg");
 
 tam = 10;
 tam2 = 24;
 tam3 = 27;
 y = 340;
 
 x = width/2; 
 alpha = 255;
 tam4 = 30;
 
 relleno = color (255);
 
}

void draw(){
  println (frameCount/60);
                                    //pantalla 1
 if (texto.equals("inicio") ){
   image (pantalla1, 0, 0);
   textSize (18);
   text (titulo, width/2, 30 ); 
                                    //pantalla 2
  if (frameCount/60 >= 5)
  texto = "texto2";

 } else if (texto == "texto2"){
   image (pantalla2b, 0, 0);
   
   fill (relleno);
   textSize (22);
   text (parrafo, width/2, 100);
   text (parrafo2, width/2, 250);
   image (pantalla2, 230, 315 );
   
   textSize (tam);
   fill (163, 230, 60);
   text (titulo2, width/2, 60, relleno); 
  
  if (tam < 50){  
   tam += 1;
  }
                                    //pantalla 3
  if (frameCount/60 >= 10)
  texto = "texto3"; 
  
 } else if (texto == "texto3"){
   image (pantalla3b, 0, 0);
   image (pantalla3, width/2, 250);
   
   relleno = color (163, 230, 60, alpha);
   alpha = alpha - 0.9;
   textSize (30);
   fill (relleno);
   text (titulo3, width/2, 200);                        
                                    //pantalla 4 
  if (frameCount/60 >= 15)
  texto = "texto4";
 
 } else if (texto == "texto4"){
   relleno = color (255); 
   image (pantalla4, 0, 0);
   textSize (tam2);
   fill (163, 230, 60);
   text (titulo4, 135, y); 
  
  if (tam2 > 13) {
   y -- ;
  }
                                    //pantalla 5 
  if (frameCount/60 >= 20)
  texto = "texto5";
 
 } else if (texto == "texto5"){
   image (pantalla5b, 0, 0);
   image (pantalla5, 45, 120);
   textSize (33);
   fill (163, 230, 60);
   text (titulo5, mouseX, 70); 
                                   //pantalla 6
if (frameCount/60 >= 25)
  texto = "texto6";
  
 } else if (texto == "texto6"){
   image (pantalla6b, 0, 0);
   fill (relleno);
   rect (340, 150, 270, 170, 15);
   rect (465, 320, 20, 85);
   image (pantalla6, 350, 160);
   
   textSize (21);
   fill (relleno);
   text (parrafo3, 165, 110);
   text (parrafo4, 165, 285);
   
   textSize (tam3);
   fill (163, 230, 60);
   text (titulo6, x, 55);
   
   if (tam3 > 15) {
   x -= 0.5 ;
   }
                                   //pantalla 7  
   if (frameCount/60 >= 30)
  texto = "texto7";
   
 } else if (texto == "texto7"){ 
  image (pantalla7, 0, 0);
  textSize (tam4);
  fill (100, 203, 14);
  text (titulo7, width/2, 60);
  
  fill (relleno);
  textSize (23);
  text (parrafo5, width/2, 95);
  circle (width/2, height/2, 40);
  
 if (tam4 < 110) 
    tam4 += 0.2 ;
   
 }
 
}

void mousePressed (){
 //boton
 if (frameCount/60 >= 30){
  float diametro = dist (mouseX, mouseY, width/2, height/2);
  int radio = 40/2;
  
  if (diametro < radio) {
   
   //reinicio de variables
   texto = "inicio";
  
   tam = 10;
   tam2 = 24;
   tam3 = 27;
   tam4 = 30;
   
   x = width/2; 
   y = 340; 
   
   alpha = 255;
   relleno = 255;
  
   frameCount = 0;
  
  } 
  
 }
 
}

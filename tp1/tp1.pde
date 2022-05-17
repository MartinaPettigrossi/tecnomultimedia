//Alumna: Pettigrossi, Matina Iara
//Legajo: 91526/8
// Trabajo Practico 1
//Profesor:
//Comision 4

 
PFont font;
PImage image, image2, image3;
int escenario=0;
float desp, desp2;

void setup() {
  size(500, 500);//tamaño de fondo
  image= loadImage("image.jpg");//incertar imagen
  image2= loadImage("image2.jpg");
  image3= loadImage("image3.png");
  font= loadFont("Algerian-48.vlw");//agregar fuente 
  textFont(font, 75);
  escenario=0;
  desp=500;
  desp2=500;
}
void draw() {

  if (escenario ==0) {

    image(image, 0, 0, width, height);
    textAlign(CENTER);
    fill(100,255,0);
    textSize(80);
    text("shrek 1", 270, desp);

    desp= desp-3;
    if (desp <250) {
      escenario=1;
      desp=500;
    }
  } else if (escenario == 1 ) {

    image(image2, 0, 0, width, height);
    textSize(25);
    fill(0,0,0);
    textAlign(CENTER);
    text("Personajes Principales \n\n Shrek \n Fiona \n Burro \n\n", width/2, desp);   
    if (desp < 50) {   
      text("Personajes secundarios: \n Dragona \n hombre de jengibre \n pincho \n Lobo feroz \n Los tres chanchitos \n los tres ratones ciegos \n Reina lilian \n Rey Harold ", height/2, desp2);
      desp2=desp2-2;
    }
    desp= desp-3;//Velocidad de movimiento 
    if (desp2 <-200) {
      escenario=2;
      desp=500;
    }
  } else if (escenario == 2 ) {

    image(image3, 0, 0, width, height);
    textSize(25);  
    textAlign(CENTER);
    text("Director \n Andrew Adamson \n Vicky Jenson, \n \n Produccion \n Jeffrey Katzenberg \n Aron Warner \n Steven Spielberg \n\n Musica \n Harry Gregson-Williams  ", 250, desp);
    desp= desp-3;
    if (desp <-300) {
      escenario=3;
      desp=600;
   } 
  }
} 
  void mousePressed () {
      escenario = 0 ;
    }

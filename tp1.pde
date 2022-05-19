//Olivera, Jesica Milagros (91328/2) - Trabajo Practico 1.


int x, x1, x3, y, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10;
PImage inicio, pantalla3, pantalla4, icon, fin;
String titulo;
PFont letra;
import processing.sound.*;
SoundFile misonido;


void setup() {
  size(600, 500);
  x=350;
  x1=60;
  x3=225;
  y=340;
  y1=100;
  y2=260;
  y3=100;
  y4=260;
  y5=380;
  y6=150;
  y7=300;
  y8=430;
  y9=435;
  y10=100;
  letra=loadFont("CorleoneDue-35.vlw");
  textFont(letra);
  titulo="Paramount Pictures Present";
  inicio=loadImage("inicio.jpeg");
  pantalla3=loadImage("pantalla3.jpeg");
  pantalla4=loadImage("pantalla.jpeg");
  icon = loadImage("icon.png");
  fin=loadImage("pantalla1.jpeg");
  misonido= new SoundFile (this,"soundtrack.wav");
  
}

void draw() {
  background (0);
  println(frameCount);
  fill(random(80, 150));

  // PANTALLA1
  if (frameCount>10 && frameCount<200);
  {
    image(inicio, 0, 0, 500, 300);
    textSize(40);
    text(titulo, 140, y1);
    if (y1==200);
    y1+=2;
  }


  //PANTALLA2
  if (frameCount>220) {
    textSize(60);
    text("The Godfather", 180, y);
    y-=1;
  }

  //PANTALLLA3
  fill(200);
  if (frameCount>300) {
    image(pantalla3, 0, 0, width, height); //FONDO
    textSize(35);
    text("Marlon Brando \nas Vito Corleone", x1, y10);
    text("Al Pacino \nas Michael Corleone", x, y10);
    y10-=4;
    text("James Caan \nas Sonny", x1, y2);
    text("Robert Duvall \nas Tom Hagen", x, y2);
    y2-=4;
    text("John Cazale \nas Fredo", x1, y8);
    text("Diane Keaton \nas Kay Adams", x, y8);
    y8-=4;
  }



  //PANTALLA4
  if (frameCount>410) {
    image(pantalla4, 0, 0, width, height);
    textSize(33);
    text("Stage", 250, y3);
    y3-=5;
    text("Photography", 230, y4);
    y4-=5;
    text("Music by", 240, y5);
    y5-=5;
    textSize(25);
    text("Williams Reynolds \nand Peter Zinner", x3, y6);
    y6-=5;
    text("Gordon Wills", x3, y7);
    y7-=5;
    text("Nino Rita and \nCarmine Coppola", x3, y9);
    y9-=5;
  }


  //PANTALLA5
  fill(random(0, 20));
  if (frameCount>510) {
    image(fin, 0, 0, width, height);
    textSize(50);
    text("Direct by", 230, 240);
    text("Francis Ford Coppola", 130, 300);
  }

  noCursor();
  {
    image(icon, mouseX, mouseY, 80, 60);
  }
}


void keyPressed () {
  if (key == 'F'|| key == 'L');
  {
     misonido.play();
    frameCount=0;
  }
}

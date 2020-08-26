/*Autores:         -B1 Samuel Leal
                   -B1 Karen Rangel

Descripcion:       Al ser ejecutado el programa adentrara al usuario en un videojuego
                   en el que su personaje principal es un perrito que busca rescatar
                   a su mejor amigo,  este cuenta con una movilidad dada por las
                   flechas del teclado.
*/
import ddf.minim.*; // Biblioteca de sonido

Minim musica;       // Crea variable para el objeto Minim
AudioPlayer fondo;  // crea objeto audio player (para reproducir audio)

float gravedad = 4.5;
float speed = 0;
int sel = 1;
int level1=1;
int cont;
menu jugar;
menu creditos;
menu salir;
menu credit;

PImage titulo;
PImage everyone;

perro Drake;
escenario nivel1;
huesos hueso1;
huesos hueso12;
huesos hueso13;
huesos hueso14;
huesos hueso15;
huesos hueso16;
huesos hueso17;
huesos hueso18;
huesos hueso19;

PFont font1;
PFont menu;

int maxIm = 3;
int imageIndex = 0;
PImage [] drakeim = new PImage[maxIm];

int maxImsalt = 3;
int imsaltIndex = 0;
PImage [] drakesalt = new PImage[maxImsalt];


void setup(){
  
  size(1000,600);
  musica = new Minim(this);
  fondo = musica.loadFile("fondo.mp3");
     //fondo.play();
     //fondo.loop(); // Reproducir musica y repetirla
  jugar = new menu((width/2),(height/2),"JUGAR");
  creditos = new menu(jugar.x,jugar.y+50,"CREDITOS");
  salir = new menu(jugar.x,creditos.y+50,"SALIR");
  credit = new menu(width/2,600,"CREDITOS");
  
  font1 = loadFont("CambriaMath-48.vlw");  // Llama la nueva fuente  
  menu = loadFont("Square721BT-BoldCondensed-48.vlw");  // Llama la nueva fuente
  everyone = loadImage("everyone.png");
  titulo = loadImage("titulo.png");
  
  
  Drake = new perro(-10,185,120,120);
  
  nivel1 = new escenario(0,0,2000,606);
  
  hueso1 = new huesos(130,240,38,25);
  hueso12 = new huesos(270,340,38,25);
  hueso13 = new huesos(530,340,38,25);
  hueso14 = new huesos(720,240,38,25);
  hueso15 = new huesos(140,285,38,25);
  hueso16 = new huesos(265,235,38,25);
  hueso17 = new huesos(420,330,38,25);
  hueso18 = new huesos(720,330,38,25);
  hueso19 = new huesos(880,235,38,25);
  
  for(int i = 0; i < drakeim.length; i++){
     drakeim[i] = loadImage("Drake"+ i +".png");
  }
  for(int e = 0; e < drakesalt.length; e++){
      drakesalt[e] = loadImage("salto"+ e +".png");
  }
       
}

void draw(){  
  
if(mousePressed == true){
  if(mouseX >= jugar.x -45 && mouseX <= jugar.x + 45 && mouseY<= jugar.y  && mouseY >= jugar.y -30){
  sel = 2;
  }
  if(mouseX >= creditos.x -70 && mouseX <= creditos.x + 70 && mouseY<= creditos.y  && mouseY >= creditos.y -30){
  sel = 3;
  }
  if(mouseX >= salir.x -45 && mouseX <= salir.x + 40 && mouseY<= salir.y  && mouseY >= salir.y -30){
   exit(); 
  }
}
 if(sel == 1){ 
  background(0);
  textSize(90);
  image(titulo,70,100);
  image(everyone,25,480,71,100);
jugar.display();
creditos.display();
salir.display();
 } 
   
 if(sel == 2){   
   if(level1 == 1){
      nivel1.display();
      Drake.move();   
      Drake.caida();
      
      if(cont == 0){
        hueso1.display(); 
        hueso1.contador();
      }    
      if(cont <= 1){
        hueso12.display();
        hueso12.contador();
      }
      if(cont <= 2){
        hueso13.display();
        hueso13.contador();
      }
      if(cont <= 3){
        hueso14.display();
        hueso14.contador();
      }
   }
   if(level1 == 2){
      nivel1.x  = -1000;
      nivel1.display();
      Drake.move();   
      Drake.caida(); 
      
      if(cont <= 4){
        hueso15.display();
        hueso15.contador();
      }
      if(cont <= 5){
        hueso16.display();
        hueso16.contador();
      }
      if(cont <= 6){
        hueso17.display();
        hueso17.contador();
      }
      if(cont <= 7){
        hueso18.display();
        hueso18.contador();
      }
      if(cont <= 8){
        hueso19.display();
        hueso19.contador();
      }
   }
      hueso19.contador();
   
 }
 
 if(sel == 3){
   credit.credits();
   textSize(25);
   text("Pressione 'r' para volver",850,40);
   if(keyPressed && key == 'r'|| key == 'R'){
     sel = 1;
   }
 }
 if(sel == 4){
   fill(255,255);
   background(0);
   textSize(40);   
   text("GAME OVER",500,300);
   textSize(25);
   text("Presione 'r' para volver al menú",500,340);
   if(keyPressed && key == 'r'|| key == 'R'){
     sel = 1;
   }
 } 
    println(Drake.x);
    //println(mouseY);    
    //println(Drake.y);
    //println(level1);
}

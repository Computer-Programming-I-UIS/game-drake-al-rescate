/*Autores:         -B1 Samuel Leal
                   -B1 Karen Rangel

Descripcion:       Al ser ejecutado el programa adentrara al usuario en un videojuego
                   de plataformas en el que su personaje principal es un perrito 
                   que busca rescatar a su mejor amiga, este cuenta con una movilidad 
                   dada por las flechas del teclado.
*/
import ddf.minim.*; // Biblioteca de sonido

Minim musica;       // Crea variable para el objeto Minim
AudioPlayer fondo;  // crea objeto audio player (para reproducir audio)

float gravedad = 5.5;
float speed = 0;
int sel = 1;
int level1=1;
int cont;

PImage titulo;
PImage everyone;
PImage flechas;
PImage jump;
PImage ganar;

PImage his1;
PImage his2;
PImage his3;

menu jugar;
menu creditos;
menu salir;
menu credit;

perro Drake;

escenario nivel1;
escenario nivelfin;

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
     fondo.loop(); // Reproducir musica y repetirla
  jugar = new menu((width/2),(height/2),"JUGAR");
  creditos = new menu(jugar.x,jugar.y+50,"CREDITOS");
  salir = new menu(jugar.x,creditos.y+50,"SALIR");
  credit = new menu(width/2,600,"CREDITOS");
  
  font1 = loadFont("CambriaMath-48.vlw");  // Llama la nueva fuente  
  menu = loadFont("Square721BT-BoldCondensed-48.vlw");  // Llama la nueva fuente
  
  everyone = loadImage("everyone.png");
  titulo = loadImage("titulo.png");
  flechas = loadImage("flechas.png");
  jump = loadImage("jump.png");
  ganar = loadImage("ganar.jpg");
  his1 = loadImage("his1.jpg");
  his2 = loadImage("his2.jpg");
  his3 = loadImage("his3.jpg");
  
  Drake = new perro(-10,185,120,120);
  
  nivel1 = new escenario(0,0,2000,606);
  nivelfin = new escenario(-733,0,1733,600);
  
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
  sel = 5;
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
   background(0);
  
  image(his1,50,100,300,300);    
  image(his2,350,100,300,300);    
  image(his3,650,100,300,300);
   fill(250);
   textSize(25);
   text("Pressione 's' para omitir",840,560);
   if(keyPressed && key == 's'|| key == 'S'){
     sel = 3;
   }
 }
 
 if(sel == 3){
   if(level1 == 1){ 
      nivel1.display();
      Drake.move();   
      Drake.caida();
     if(Drake.x > -20 && Drake.x < 100 ){
       textSize(16);
       text("MOVE",85,170);
      image(flechas,40,180,90,30);
     }
     if(Drake.x > 470 && Drake.x < 570 ){
       textSize(16);
       text("JUMP",575,240);
      image(jump,560,250,30,30);
     }
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
 if(level1 == 3){
     nivelfin.display2();
     Drake.move();   
     Drake.caida();
   }
   if(level1 == 4){
     image(ganar,0,0,998,600);
     fill(0);
     textSize(45);
     text("LO LOGRASTE!!",475,590); 
     textSize(25);
     text("Pressione 'r' para volver",850,40);
    if(keyPressed && key == 'r'|| key == 'R'){
     sel = 1;
     level1 = 1;     
    }   
   }
      hueso19.contador();   
 }
 
 if(sel == 5){
   credit.credits();
   fill(250);
   textSize(25);
   text("Pressione 'r' para volver",850,40);
   if(keyPressed && key == 'r'|| key == 'R'){
     sel = 1;
     
   }
 }
 if(sel == 6){
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
    //println(Drake.x);
    //println(mouseY);    
    //println(Drake.y);
    //println(level1);
}

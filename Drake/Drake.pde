/*Autores:         -B1 Samuel Leal
                   -B1 Karen Rangel

Descripcion:       Al ser ejecutado el programa adentrara al usuario en un videojuego
                   en el que su personaje principal es un perrito que busca rescatar
                   a su mejor amigo,  este cuenta con una movilidad dada por las
                   flechas del teclado.
*/
boolean salto = false;
int sel = 1;
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
huesos contador;

PFont font; 
int maxIm = 3;
int imageIndex = 0;
PImage [] drakeim = new PImage[maxIm];


void setup(){
  size(1000,600);
  
  jugar = new menu((width/2),(height/2),"JUGAR");
  creditos = new menu(jugar.x,jugar.y+50,"CREDITOS");
  salir = new menu(jugar.x,creditos.y+50,"SALIR");
  credit = new menu(width/2,600,"CREDITOS");
  font = loadFont("CambriaMath-48.vlw");  // Llama la nueva fuente
  everyone = loadImage("everyone.png");
  titulo = loadImage("titulo.png");
  Drake = new perro(-10,185,120,120);
  nivel1 = new escenario(0,0,2000,606);
  
  hueso1 = new huesos(130,240,38,25);
  hueso12 = new huesos(270,340,38,25);
  hueso13 = new huesos(530,340,38,25);
  hueso14 = new huesos(720,240,38,25);
  hueso15 = new huesos(800,240,38,25);
  hueso16 = new huesos(800,345,38,25);   
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
   nivel1.display();
   
   Drake.display();
   Drake.move();   
   Drake.caida();
   if(cont == 0){
     hueso1.display(); 
   }
     hueso1.contador();
   if(cont <= 1)
     hueso12.display();
   if(cont <= 2)
     hueso13.display();
   if(cont <= 3)
     hueso14.display();
   if(cont <= 4)
     hueso15.display();
   if(cont <= 5)
     hueso16.display();
 }
 if(sel == 3){
   credit.credits();
 }
 if(sel == 4){
   fill(255,255);
   background(0);
   textSize(40);   
   text("GAME OVER",500,300);
 } 
    println(Drake.x);
    //println(mouseY);    
    //println(Drake.y);
}

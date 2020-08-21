/*Autores:         -B1 Samuel Leal
                   -B1 Karen Rangel

Descripcion:       Al ser ejecutado el programa adentrara al usuario en un videojuego
                   en el que su personaje principal es un perrito que busca rescatar
                   a su mejor amigo,  este cuenta con una movilidad dada por las
                   flechas del teclado.
*/
int sel = 1;
int cont;
menu jugar;
menu creditos;
PImage titulo;
perro Drake;
escenario city1;
huesos hueso1;
huesos hueso12;
huesos hueso13;
huesos hueso14;
huesos hueso15;
huesos hueso16;
huesos contador;

int maxImages = 3;
int imageIndex = 0;
PImage [] images = new PImage[maxImages];
PImage Drake1;

void setup(){
  size(1000,600);
  jugar = new menu((width/2),(height/2),"JUGAR");
  creditos = new menu(jugar.x,jugar.y+40,"CREDITOS");
  titulo = loadImage("titulo.png");
  Drake = new perro(-10,188,120,120);
  city1 = new escenario(0,0,1200,610);
  hueso1 = new huesos(150,340,38,25);
  hueso12 = new huesos(300,340,38,25);
  hueso13 = new huesos(415,240,38,25);
  hueso14 = new huesos(580,300,38,25);
  hueso15 = new huesos(745,240,38,25);
  hueso16 = new huesos(890,345,38,25);  
   
}

void draw(){
if(mousePressed == true){
  if(mouseX >= jugar.x -45 && mouseX <= jugar.x + 45 && mouseY<= jugar.y  && mouseY >= jugar.y -30){
  sel = 2;
  }
  if(mouseX >= creditos.x -70 && mouseX <= creditos.x + 70 && mouseY<= creditos.y  && mouseY >= creditos.y -30){
  sel = 3;
  }  
}
 if(sel == 1){
  background(0);
  textSize(90);
  image(titulo,70,100);
jugar.display();
creditos.display();
 } 
   
 if(sel == 2){
   city1.display();
   
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
   background(0);
 }
 if(sel == 4){
   background(0);
   textSize(40);
   text("GAME OVER",500,300);
 }
    //println(Drake.x);
    //println(mouseX);
    //println(Drake.y);
}

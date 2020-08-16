/*Autores:         -B1 Samuel Leal
                   -B1 Karen Rangel

Descripcion:       Al ser ejecutado el programa adentrara al usuario en un videojuego
                   en el que su personaje principal es un perrito que busca rescatar
                   a su mejor amigo,  este cuenta con una movilidad dada por las
                   flechas del teclado.
*/
int sel = 1;
menu jugar;
menu creditos;
PImage titulo;
perro Drake;

void setup(){
  size(1000,600);
  jugar = new menu((width/2),(height/2),"JUGAR");
  creditos = new menu(jugar.x,jugar.y+40,"CREDITOS");
 
  titulo = loadImage("titulo.png");
  Drake = new perro(20,500,120,90);
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
   background(255,0,0);
   Drake.display();
 }
 if(sel == 3){
   background(0,255,0);
 }  
}
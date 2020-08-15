/*Autores:         -B1 Samuel Leal
                   -B1 Karen Rangel

Descripcion:       Al ser ejecutado el programa adentrara al usuario en un videojuego
                   en el que su personaje principal es un perrito que busca rescatar
                   a su mejor amigo,  este cuenta con una movilidad dada por las
                   flechas del teclado.
*/
int sel = 1;
menu jugar;
menu opciones;
menu creditos;
PImage titulo;

void setup(){
  size(1000,600);
  jugar = new menu((width/2),(height/2),"JUGAR");
  opciones = new menu(jugar.x,jugar.y+40,"OPCIONES");
  creditos = new menu(jugar.x, opciones.y+40,"CREDITOS");
  titulo = loadImage("titulo.png");
}

void draw(){
if(mousePressed == true){
  //if(mouseX,mouseY, ) 
}
 if(sel == 1){
  background(0);
  textSize(90);
  image(titulo,70,100);
jugar.display();
opciones.display();
creditos.display();
 } 
   
 if(sel == 2){
   
 }
 if(sel == 3){
   
 }
 if(sel == 4){
   
 }


  
}

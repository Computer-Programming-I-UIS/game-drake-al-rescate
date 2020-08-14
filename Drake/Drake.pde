int sel = 1;
menu jugar;
menu opciones;
menu creditos;

void setup(){
  size(1000,600);
  jugar = new menu((width/2),(height/2),"JUGAR");
  opciones = new menu(jugar.x,jugar.y+40,"OPCIONES");
  creditos = new menu(jugar.x, opciones.y+40,"CREDITOS");
}

void draw(){
  background(0);
  textSize(60);
  text("Drake al rescate",width/2,200); 
  
jugar.display();
opciones.display();
creditos.display();
  
}

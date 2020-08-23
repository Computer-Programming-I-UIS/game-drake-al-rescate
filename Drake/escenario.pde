class escenario extends perro{
  
 escenario(int x, int y, int a, int h){
   super(x,y,a,h);   
 }
 
 void display(){
  PImage nivel1;
  nivel1 = loadImage("nivel1.jpg");
 image(nivel1,x,y,a,h);
 }
}

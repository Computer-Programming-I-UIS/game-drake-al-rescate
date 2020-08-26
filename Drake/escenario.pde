class escenario extends perro{
  
 escenario(int x, int y, int a, int h){
   super(x,y,a,h);   
 }
 
 void display(){
  PImage nivel1;
  nivel1 = loadImage("nivel1.jpg");
 image(nivel1,x,y,a,h);
 }
 void display2(){
  PImage nivelfin;
  nivelfin = loadImage("nivelfin.jpg");
 image(nivelfin,x,y,a,h);
 }
}

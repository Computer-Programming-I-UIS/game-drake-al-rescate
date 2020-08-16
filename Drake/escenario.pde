class escenario extends perro{
  
 escenario(int x, int y, int a, int h){
   super(x,y,a,h);   
 }
 
 void display(){
  PImage city1;
  city1 = loadImage("nivel1.jpg");
 image(city1,x,y,a,h);
 }
}

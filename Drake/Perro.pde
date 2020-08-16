class perro {
 int x,y,a,h;
  perro(int tx,int ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }
  
  void display(){
    PImage Drake;
    Drake = loadImage("Drake.png");
   image(Drake,x,y,a,h);
  }
}

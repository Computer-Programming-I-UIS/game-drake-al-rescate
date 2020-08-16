class perro {
 int x,y,a,h;
  perro(int tx,int ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }
  
  void display(){
    image(images[imageIndex],x,y,a,h);
    imageIndex = (imageIndex+1)% images.length;
}
}

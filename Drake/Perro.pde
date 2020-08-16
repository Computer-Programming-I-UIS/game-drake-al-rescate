class perro {
 int x,y,a,h;
  perro(int tx,int ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }
  
  void display(){
    image(images[imageIndex],width/2,height/2,120,90);
    imageIndex = (imageIndex+1)% images.length;
}
}

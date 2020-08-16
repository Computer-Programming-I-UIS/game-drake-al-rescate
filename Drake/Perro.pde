class perro {
 int x,y,a,h;
  perro(int tx,int ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }
  
  void display(){
    //image(Drake1,x,y,a,h);
  }

  void move(){
    if(keyPressed && key == CODED){
      if(keyCode == RIGHT){
        x += 15;
        image(images[imageIndex],x,y,a,h);
        imageIndex = (imageIndex+1)% images.length;
      }
      if(keyCode == LEFT){
       x -= 15;       
       image(images[imageIndex],x,y,a,h);
       imageIndex = (imageIndex+1)% images.length;
      }
    }
    else{
      image(Drake1,x,y,a,h); 
    }
  }
}

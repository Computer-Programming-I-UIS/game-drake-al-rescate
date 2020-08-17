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
  void caida(){
   if(x > 65 && y == 188)
     y = 284;   
   if(x < 65 && y == 284 || x > 350 && y == 284) 
   for(int i =0; i < 50;i+=4){     
    frameRate(5);
     y += i;
     
   }
  }
}

class perro {
 int x,y,a,h;
  perro(int tx,int ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }
  int vid = 3;
  
  void display(){
    Drake1 = loadImage("Drake0.png");
    
    for(int i = 0; i < images.length; i++){
      images[i] = loadImage("Drake"+ i +".png"); 
      frameRate(15);
   }
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
   if(x < 65 && y == 284 || x > 350 && y == 284){  
      for(int i =0; i < 90;i+=10){
         y += i;
         image(Drake1,x,y,a,h);     
      }
      vid -= 1;
      if(vid == 0){
        delay(400);
        sel = 4;
      }
        delay(700);
        x = -10;
        y = 188;
   }
   vida();
  }
  void vida(){
   PImage corazon;
   corazon = loadImage("corazon.png");
   
   int x = 820;
   for(int i = 0;i < vid;i++){
     x += 40;
   image(corazon,x,25);
   }
  }
}

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
    
    for(int i = 0; i < drakeim.length; i++){
      drakeim[i] = loadImage("Drake"+ i +".png"); 
      //frameRate(20);
   }
  }
  void move(){
    
    if(keyPressed && key == CODED){
      if(keyCode == RIGHT){
        x += 20;
        image(drakeim[imageIndex],x,y,a,h);
        imageIndex = (imageIndex+1)% drakeim.length;
      }
      if(keyCode == LEFT){
       x -= 20;       
       image(drakeim[imageIndex],x,y,a,h);
       imageIndex = (imageIndex+1)% drakeim.length;
      }
      if(keyCode == UP){
        salto = true;
        if(salto){
        y -= 2;
        if(y == 160){
          y += 2;
        }
        }        
         image(drakeim[imageIndex],x,y,a,h);
       imageIndex = (imageIndex+1)% drakeim.length;
      }
      }    
    else
      image(drakeim[imageIndex],x,y,a,h); 
    }        
  
  
  void caida(){
   /* if(x > -10 && x < 65)
      y = 188;*/
   if(x > 150 && y == 185)
     y = 284;   
   if(x < 150 && y == 284 || x > 580 && y == 284){
      for(int i =0; i < 90;i+=10){
         y += i;
         image(drakeim[imageIndex],x,y,a,h);     
      }
      cont = 0;
      vid -= 1;
      if(vid == 0){
        delay(400);
        sel = 4;
      }
        delay(700);
        x = -10;
        y = 185;
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

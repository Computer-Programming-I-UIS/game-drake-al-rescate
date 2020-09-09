class perro {
 float y;
 int x,a,h;
  perro(int tx,float ty,int ta, int th){
    x = tx;
    y = ty;
    a = ta;
    h = th;
  }
  //int vid = 3;

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
      if(keyCode == UP &&( y ==185|| y ==285 || y ==240|| y == 420||y == 380||y == 400)){        
        y = y -120;        
        image(drakesalt[imsaltIndex],x,y,a,h);
        imsaltIndex = (imsaltIndex+1)% drakesalt.length;
      }
      if(keyCode == UP ){
        image(drakesalt[imsaltIndex],x,y,a,h);
        imsaltIndex = (imsaltIndex+1)% drakesalt.length;
      }
    }
    else
      image(drakeim[imageIndex],x,y,a,h); 
    }
  
  void caida(){
    
     y = y + speed;
     speed = speed + gravedad;
     
   if(level1 == 1){
     nivel1.x  = 0;
     if(x > -20 && x < 150 &&  y > 185 && y < 200){
       y = 185;
       speed = 0;
     }
     if(x > 160 && x < 590 && y > 285 && y < 320){
       y = 285;
       speed = 0;
     }
     if(x > 590 && x < 785 && y > 185 && y < 200){
       y = 185;
       speed = 0;
     }
     if(x > 790 && x < width && y > 240 && y < 280){
       y = 240;
       speed = 0;
       if(x > width -70 && level1 == 1){
         level1 = 2;
         x = - 10;
       }
     }
   }
     if(level1 == 2){
         nivel1.x  = -1000;
      if(x > - 80 && x < 150 && y > 240 && y < 265){        
         y = 240;
         speed = 0;        
         }
       if(x > 150 && x < 325 && y > 180 && y < 205){        
         y = 180;
         speed = 0;
       }
       if(x > 330  && x < 750 && y > 285 && y < 310){        
         y = 285;
         speed = 0;         
       }
       if(x > 755  && x < 900 && y > 185 && y < 210){        
         y = 185;
         speed = 0;         
       }
       if(x > width -140 && level1 == 2){
         level1 = 3;
         x = - 10;
         speed = 0;
         y = 420;
       }
     }
     if(level1 == 3){
       if(x > - 50 && x < 35 && y > 420 && y < 455){        
         y = 420;
         speed = 0;        
         }         
       if(x > 75 && x < 290 && y > 380 && y < 415){        
         y = 380;
         speed = 0;        
         }
       if(x > 365 && x < 510 && y > 400 && y < 425){        
         y = 400;
         speed = 0;        
         }
       if(x > 600 && x < 1000 && y > 430 && y < 455){        
         y = 430;
         speed = 0; 
         }
        if(x > 670){        
          level1 = 4;
           x = -10;
           y = 185;
           speed = 0;
         }
     }   
  } 
}

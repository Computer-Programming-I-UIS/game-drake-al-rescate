class vida extends perro{
  
  vida(int x, int y, int a, int h){
   super(x,y,a,h);   
  }
   int vid = 3;
  void corazon(){
    
  }
  void vidacont(){
    if(Drake.y > height+20){
     cont = 0;
     vid -= 1;
      if(vid == 0){
        delay(400);
        sel = 6;
        vid = 3;
      }
        delay(700);
        Drake.x = -10;
        Drake.y = 185;
        speed = 0;
        level1 = 1;
     }
  
   int x2 = 820;
   for(int i = 0;i < vid;i++){
     x2 += 40;
   image(corazon,x2,y);
   }
  }
}

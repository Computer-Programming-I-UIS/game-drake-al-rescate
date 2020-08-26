class huesos{
  int x,y,a,h;
 huesos(int tx, int ty,int ta,int th){
   x = tx;
   y = ty;
   a = ta;
   h = th;
 }
 
 
 void display(){ 
  PImage hueso;
  hueso = loadImage("hueso.png");
 
  image(hueso,x,y,a,h);
 }
 
 void contador(){   
   if(Drake.x +60 >= x && Drake.x +60 <= x +40 && Drake.y+60 > y && Drake.y+60 < y +20 ){
     cont = cont + 1;
     if(cont==9){
      hueso19.y = -32; 
     }
     
   }   
  // fill(0);
   textFont(menu);
   textSize(30);  // Cambia el tamaño del texto
   text("SCORE:",65,45); 
   text(cont,120,45);   
 }
}

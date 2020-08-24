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
   
   if(Drake.x+60 == hueso1.x||Drake.x+60 == hueso12.x||Drake.x+60 == hueso13.x||Drake.x+60 == hueso14.x){
     cont = cont + 1;
   }   
   fill(0);
   textFont(menu);
   textSize(30);  // Cambia el tamaño del texto
   text("SCORE:",65,45); 
   text(cont,120,45);
  
   
 }
}

class menu {
  int x,y;
  String texto;
  
  menu(int tx, int ty,String ttexto){
    x = tx;
    y = ty;
    texto = ttexto;
  }
  
  void display(){
    textSize(30);
    textAlign(CENTER);
    text(texto,x,y);
  }
  
  void Credits(){
    
  }
}

class menu {
  int x,y;
  String texto;
  
  menu(int tx, int ty,String ttexto){
    x = tx;
    y = ty;
    texto = ttexto;
  }
  
  void display(){
    fill(250);
    textFont(menu);
    textSize(35);       // Cambia el tamaño del texto
    textAlign(CENTER);  //Centra el texto en pantalla
    text(texto,x,y);
  }
  
  void credits(){   
     if(y >-520){
       background(0);    
          y = y-1;
        textFont(font1);      // Cambia la fuente del texto
        textSize(20);        // Cambia el tamaño del texto
         textAlign(CENTER);  //Centra el texto en pantalla
             text(texto,x,y);
         text("Guión y Direccion",width/2,y+40);
             text("Samuel Leal",width/2,y+60);
             text("Karen Rangel",width/2,y+80);
          text("Producción",width/2,y+110);
             text("Samuel Leal",width/2,y+130);
             text("Karen Rangel",width/2,y+150);
          text("Programación y Animación",width/2,y+180);
             text("Karen Rangel",width/2,y+200);
             text("Samuel Leal",width/2,y+220);
          text("Ambientación",width/2,y+250);
             text("Karen Rangel",width/2,y+270);
          text("Diseño Drake",width/2,y+300);
             text("Zulay Rueda",width/2,y+320);
          text("Diseño Demás Personajes",width/2,y+350);
             text("Karen Rangel",width/2,y+370);
          text("Diseño De Sonido",width/2,y+400);
             text("Samuel Leal",width/2,y+420);
          text("Música",width/2,y+450);
             text("Samuel Leal",width/2,y+470); 
          text("Diseño Creditos",width/2,y+500);
             text("Samuel Leal",width/2,y+520);
        textSize(35);      // Cambia el tamaño del texto
          text("Gracias por jugar",width/2,y+820);
     }   
  }
}

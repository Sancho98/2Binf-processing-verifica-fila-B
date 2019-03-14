Personaggio harry;
Veicolo scopa;

class Personaggio {
  PShape forma;
  Personaggio() {
    forma=loadShape("harry.obj");
    forma.setFill(color(0, 0, 0));
  }
  void disegna(float x, float y) {
    shape(forma, x, movimentoy);
  }
  void cade() {
    if (movimentoy <= height*0.9) {
      movimentoy=movimentoy+4;
    }
  }
  void avvicina(Personaggio personaggio){
    personaggio.forma.scale(1.01);
    
  }
}
class Veicolo {
  PShape forma;
  Veicolo() {
    forma=loadShape("broom.obj");
    forma.setFill(color(#FF08EF));
  }
  void disegna(float x, float y) {
    shape(forma, x, y);
  }
  void avvicina(Veicolo veicolo){
  veicolo.forma.scale(1.01);
  }
  
  
  
}






PShape Nimbus2000;
float movimentox, movimentoy;

//void movimentoautoy() {
// if (movimentoy >= height*0.9) {
// movimentoy = height*0.9;
//} else {
//movimentoy += 4;
//}
//}




void setup() {
  fullScreen(P3D);
  loadShape("harry.obj");
  loadShape("broom.obj");
  harry = new Personaggio();
  scopa = new Veicolo ();
}

void draw() {
  background(#7AFF5D);
  lights();
  scopa.disegna(width*0.5, height*0.9);
  harry.disegna(width*0.5, movimentoy);
  harry.cade();
  harry.avvicina(harry);
  scopa.avvicina(scopa);
  //movimentoy();
}

class Movil {
  PVector pos;
  PVector vel;
  int tamano = 20;
  Movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(random(-3, 3), random(-3, 3)); 
  }

  void mover() {
    pos.add(vel);
  }

  void mostrar() {
    fill(255);
    circle(pos.x, pos.y, tamano);
  }

  void contener() {
    float radio = tamano / 2;
    if (pos.x + radio > width || pos.x - radio < 0) {
      vel.x = vel.x * -1;
    }
    if (pos.y + radio > height || pos.y - radio < 0) {
      vel.y = vel.y * -1;
    }
  }
}
int cantidad = 15;
Movil[] moviles = new Movil[cantidad];

void setup() {
  size(800, 600);
  float espacio = width / (cantidad + 1);
  
  for (int i = 0; i < moviles.length; i++) {
    float x = espacio * (i + 1);
    float y = height / 2;

    moviles[i] = new Movil(x, y);
  }
}

void draw() {
  background(0);

  for (int i = 0; i < moviles.length; i++) {
    moviles[i].mover();
    moviles[i].contener();
    moviles[i].mostrar();
  }
}

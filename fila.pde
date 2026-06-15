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

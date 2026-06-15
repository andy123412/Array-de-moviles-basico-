int filas = 5;
int columnas = 6;
int totalMoviles = filas * columnas; 
Movil[] moviles = new Movil[totalMoviles];

void setup() {
  size(800, 600);
  float espacioX = width / (columnas + 1);
  float espacioY = height / (filas + 1);
  
  int indice = 0;
  
  for (int f = 0; f < filas; f++) {
    for (int c = 0; c < columnas; c++) {
      
      float x = espacioX * (c + 1);
      float y = espacioY * (f + 1);
      
      moviles[indice] = new Movil(x, y);
      indice++;
    }
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

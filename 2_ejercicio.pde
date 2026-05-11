int tam = 40;
int cols;
int filas;
boolean[][][] laberinto;

void setup() {
  size(800, 600);
  cols = width / tam;
  filas = height / tam;

  laberinto = new boolean[cols][filas][6];

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < filas; j++) {
      for (int k = 0; k < 6; k++) {
        laberinto[i][j][k] = random(1) > 0.5; 
      }
    }
  }
}

void draw() {
  background(255);
  
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < filas; j++) {

      float x = i * tam;
      float y = j * tam;

      stroke(0);

      if (laberinto[i][j][0]) line(x, y, x + tam, y);             
      if (laberinto[i][j][1]) line(x + tam, y, x + tam, y + tam); 
      if (laberinto[i][j][2]) line(x, y + tam, x + tam, y + tam); 
      if (laberinto[i][j][3]) line(x, y, x, y + tam);             
      if (laberinto[i][j][4]) line(x, y, x + tam, y + tam); 
      if (laberinto[i][j][5]) line(x + tam, y, x, y + tam); 
    }
  }
  noLoop();
}

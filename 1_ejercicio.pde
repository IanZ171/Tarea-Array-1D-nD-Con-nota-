int cant = 20;
float [] altura = new float[cant];
float ancho;

void setup(){
size(800, 600);
background(255);
ancho = width / cant;

for(int i = 0; i<cant;i++){
altura[i] = 0;
}
}

void draw(){
  background(255);
  int iActivo = int(mouseX / ancho);

  if (iActivo >= 0 && iActivo < cant) {

    altura[iActivo] = height - mouseY; 
  }
  for (int i = 0; i < cant; i++) {
    fill(147);
    rect(i * ancho, height, ancho, -altura[i]);
  }
} 

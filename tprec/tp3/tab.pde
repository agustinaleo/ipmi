boolean reiniciar (float px, float py, float ancho, float alto, boolean resultado) {
  if (mouseX > px && mouseX < px + ancho && mouseY > py && mouseY < ancho + alto) {
    resultado = true;
  } else {
    resultado = false;
  }
  return resultado;
}
void elraton(float mouseX, float mouseY){
 if (frameCount/60 == 0){
 mouseX = 672;
 mouseY = 243;
 }
}

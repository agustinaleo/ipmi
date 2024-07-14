//Agustina León
//tp3
//comisión 1
//https://youtu.be/MuwCZ7scN0A (original)
//  https://youtu.be/Cs7WMCwa_fA (recuperatorio)
PImage ilusion;
int mas = 400;
int lug;
color fond, blanco;
boolean resultado;


void setup(){
  size(800,400);
  lug = width/mas;
  fond= 10;
  rectMode(CENTER);
  ilusion = loadImage("ilusion.jpg");
  
}
void draw(){
  background(fond);
  image(ilusion,0,0,400,400);
  println(mouseX,mouseY);
  println (frameCount /60);
  elraton(mouseX, mouseY);
 
  for(int y=0; y<=mas; y+=15){
    for(int x=0; x<=mas; x+=25){
      float dis = dist(mouseX/2, mouseY/2, x*lug+lug/2, y*lug+lug/2);
      float diag = dist(0,0,width,height);
      float tam = map(dis,200,diag,25,lug);
      
        ellipse(x+210*lug+lug/2, y*lug+lug/2, tam, tam);
     
     
   }
  }
 }
void keyPressed(){
  if(key=='r'){
   if (reiniciar(400, 0, width/2, height, resultado)) {
     fond=255;
     fill(10);
     } else {
     fond=10;
     fill(255);
     }
  }
}
//apretar 'r' en la imagen de referencia hace que se reinicie, mientras que apretar 'r' en la obra lo cambia de color. 

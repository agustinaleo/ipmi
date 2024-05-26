//Agustina León
//tp2 comision 1

String estado;
String personajes;
int segundos;
int vertical;
PImage fondo; //imagenes usadas
PImage fondo2;
PImage fondo3;
PImage fondo4;
PFont fuente;
float tono;
void setup(){
  size(640,480);
  estado = "titulo";
  personajes = "Brad Pitt como Gerry Lane, Mireille Enos como Karen Lane, Abigail Hargrove como Rachel Lane, Sterling Jerin como Constance Lane.";
  vertical = height; 
  tono = 50;
  fuente = loadFont("fuente.vlw");
  textFont(fuente, 50);
  fondo = loadImage("GMZ1.jpg");
  fondo2 = loadImage("GMZ2.jpg");
  fondo3 = loadImage("GMZ3.jpeg");
  fondo4 = loadImage("GMZ4.jpg");
}
void draw(){
  println(mouseX);
  println(mouseY);
  image(fondo,0,0,640,480);
  textSize(150);
  fill(100,10,0);
  
if (estado.equals("titulo")) { //primera pantalla
  text("Z",273,380);
  fill(220,220,220);
  textSize(40);
  textLeading(20);
  text("G u e r r a    M u n d i a l",57,342);
}

else if (estado.equals("segunda")){ //segunda pantalla
  image(fondo2,0,0,640,480);
  fill(200,100,0);
  textSize(30);
  text("Dirigido por \n Marc Forster",100,vertical,200,300);
  if (vertical>100){
    vertical --;
  }
}

else if (estado.equals("tercera")){ //tercera pantalla
  image(fondo4,0,0,640,480);
  textSize(30);
  textAlign(CENTER, CENTER);
  stroke(255);
  float tono = map(vertical, height, 100, 255, 0);
  fill(220, 220, 220, tono);
  text(personajes,100,vertical,440,400);
  if (vertical>100){
    vertical --;
  }
}

else if(estado.equals("ultima")){ //cuarta pantalla
  image(fondo3,0,0,640,480);
  fill(200,10,0,tono);
  textSize(40);
  text("EL FIN",height/2,width/2);
  if (tono==50) {
  tono = tono+20;}
}

if (segundos<4) {
  estado = "titulo";
} else if (segundos>=4 && segundos<=7){
  estado = "segunda";
} else if (segundos>7 && segundos<15){
  estado = "tercera";
} else {
  estado = "ultima";  
  }
  //if (segundos=17) {
    //square(440,40,40); //cuando trato de poner un botón, me dice que no es compatible con boolean. EN NINGUN MOMENTO USÉ BOOLEAN.  
  //}
  
text(segundos,400,50);  //contador
  if (frameCount%60 == 0) { 
    segundos++;
  }
  
}
void mousePressed(){
  if (segundos>=17) {
    estado = "inicio";
    segundos = 0;
  }
}

//León Agustina
//tp1 comision 1
PImage fondo;
void setup(){
  size(800,400);
  fondo = loadImage("buho.jpg"); //animalito
}
void draw(){
  background(97,82,69);//ajusté el color del fondo con la imagen de referencia
  image(fondo,0,0,400,400);
  println(mouseX);//cords del mouse para guiarme
  println(mouseY);
  noStroke();//al trabajar con blanco, considero que es más estético sin bordes
  fill(240, 241, 242);
  ellipse(594,118,200,135);//cabeza
  triangle(496,133,508,228,595,194);//ambos triangulos simulando el cuello
  triangle(691,128,710,216,594,193);
  ellipse(594,208,180,80);
  ellipse(690,313,380,200);//torso
  curve(657,165,509,224,511,327,615,153); //insatisfecha con las lineas, busqué como hacer curvas para un resultado mas organico
  triangle(510,224,505,286,560,239);//rellenar los vacios
  curve(561,300,496,284,522,400,548,261);
  triangle(505,328,520,400,600,400);//rellenar
  curve(564,99,495,118,512,230,616,7);//curva en el cuello
  curve(536,129,685,97,707,220,608,88);
  square(679,204,20);//relleno en el cuello
  curve(607,175,702,190,798,248,753,266);//conexion entre cuello y torso
  triangle(702,190,706,218,751,219);
  square(775,383,200);
  //todo esto es la silueta del cuerpo. ahora voy a seguir con la cara y los detalles del ala
  
  fill(230,230,230);
  triangle(653,167,539,167,597,194);//sombra
  
  fill(0,10,50);
  quad(598,127,591,163,599,181,607,163);//pico
  ellipse(546,113,50,30);//ojo izquierdo
  ellipse(646,113,50,30);//ojo derecho
  
  fill(230,230,230);
  triangle(570,108,552,98,558,93);//sombrita de ojos
  triangle(619,108,640,98,633,93);
  quad(541,323,615,266,785,400,540,400);//alita
  curve(684,400,541,323,615,266,604,400);//redondeo de alita
  
  fill(176, 145, 58);
  ellipse(642,113,41,25);//iris derecho
  ellipse(550,113,41,25);//iris izquierdo
  
  fill(0,10,30);
  ellipse(639,113,14,14);//pupila derecha
  ellipse(553,113,14,14);//pupila izquierda
  
  //las siguientews figuras son las manchitas marrones en todo el cuerpo
  
  fill(128, 74, 27);
  ellipse(614,56,10,5);
  ellipse(587,54,3,4);
  ellipse(598,55,1,1);
  ellipse(603,52,1,1);
  ellipse(570,55,1,1);
  ellipse(605,57,1,1);
  ellipse(644,65,1,1);
  ellipse(668,275,3,4);
  ellipse(551,342,7,10);
  ellipse(776,345,10,15);
  ellipse(772,241,12,8);
  ellipse(795,355,8,12);
  square(656,390,10);
  ellipse(649,374,7,15);
   
}

//Agustina León
//tp3
//comisión 1
//https://youtu.be/MuwCZ7scN0A
PImage ilusion;
int mas = 400;
int lug;
int fond;

void setup(){
  size(800,400);
  lug = width/mas;
  fond = 10;
  rectMode(CENTER);
  ilusion = loadImage("ilusion.jpg");
  
}
void draw(){
  background(fond);
  image(ilusion,0,0,400,400);
  println(mouseX,mouseY);
 
  for(int y=0; y<=mas; y+=15){
    for(int x=0; x<=mas; x+=25){
      float dis = dist(mouseX/2, mouseY/2, x*lug+lug/2, y*lug+lug/2);
      float diag = dist(0,0,width,height);
      float tam = map(dis,200,diag,25,lug);
      
        ellipse(x+210*lug+lug/2, y*lug+lug/2, tam, tam);
     
     
    }
  }
}

void mousePressed(){
  fond = 255;
  fill(0);
 
}
void keyPressed(){
  fond = 10;
  fill(255);
}

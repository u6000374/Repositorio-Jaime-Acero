PImage m;
color mov;
color aux;
float r;
float g;
float b;
void setup(){
  size(500,500);

  background(255);
  colorMode(HSB,100);
  for (int x=0; x<width;x++){
    for (int y=0; y<height;y++){{if(dist(200,200,x,y)<=190){    
    stroke(map(atan2(x-200,y-200),-PI,PI,0,100),map(dist(200,200,x,y),0,100,0,100),100);
    point(x,y);}}
  }}
  noFill();
m=get();
}

void draw(){
 image(m,0,0);
 noStroke();
 fill(mov);
rect(400,400,100,100);
}

void mouseDragged(){
  if(mov!=color(255)){
mov=get(mouseX,mouseY);}
if(mov==color(255)){
mov=color(0);
 
}
  r = int(red(mov));
  g = int(green(mov));
  b = int(blue(mov));
  print(r); print('\t'); print(g); print('\t'); println(b);
}

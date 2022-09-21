import peasy.*;
PeasyCam cam;
//float rot;
float x=0, y=0, z=0;
ArrayList<PVector> points = new ArrayList<PVector>();
void setup(){
  size(1000, 1000, P3D);
  smooth(2);
  cam = new PeasyCam(this,500);
  background(255);
  frameRate(60);
}

float step = 10;

void draw(){
  //if(!mousePressed) {
  //  rot += .003;
  ////}
  //rotateX(rot);
  //rotateZ(rot/2);
  background(255);
  stroke(0,0,255);
  strokeWeight(2);
  points.add(new PVector(x, y, z));
  for(PVector v: points){
    point(v.x,v.y,v.z);
  }
  x=x+random(-step,step);
  y=y+random(-step,step);
  z=z+random(-step,step);
  strokeWeight(10);
  stroke(0);
  point(x,y,z);
  if (x>400) {
    x=400;
  }
  if (x<-400) {
    x=-400;
  }
  if (y>400) {
    y=400;
  }
  if (y<-400) {
    y=-400;
  }
  if (z>400) {
    y=400;
  }
  if (z<-400) {
    y=-400;
  }
  translate(0,0,0);
  noFill();
  strokeWeight(3);
  stroke(0,0,0);
  box(600);
}

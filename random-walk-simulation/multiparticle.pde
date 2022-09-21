import peasy.*;
PeasyCam cam;

int point_num = 1000;

ArrayList<PVector> points = new ArrayList<PVector>();
color[] pc = new color[point_num];

void setup(){
  size(1000, 1000, P3D);
  background(255);
  cam = new PeasyCam(this, 1200);
  for (int i = 0; i < point_num; i = i + 1) {
    points.add(new PVector(0, 0, 0));
    pc[i] = color(random(1,254), random(1,254), random(1,254));
  }
  frameRate(30);
}

float step = 10;

void draw(){
  background(255);
  
  stroke(0, 255, 255);
  strokeWeight(10);
  int i = 0;
  for (PVector v:points) {
    float dx = random(-step, step);
    float dy = random(-step, step);
    float dz = random(-step, step);
    v.x = v.x + dx;
    v.y = v.y + dy;
    v.z = v.z + dz;
    stroke(pc[i]);
    i = i + 1;
    point(v.x, v.y, v.z);
  }
  translate(0,0,0);
  noFill();
  strokeWeight(3);
  stroke(0,0,0);
  box(800);
}

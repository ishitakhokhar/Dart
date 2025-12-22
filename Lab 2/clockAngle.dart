void main(){
  int hr=3;
  int min=15;

  hr%=12;

  double hrAngle=(hr*30)+(min*0.5);
  double minAngle=min*6;

  double angle=(hrAngle-minAngle).abs();
  if(angle>180){
    angle=360-angle;
  }
  print("$angle");
}
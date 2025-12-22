import 'dart:io';

void main(){
  double English=34.6;
  double Maths=56.7;
  double ss=0.0;
  double science=90.56;
  double Hindi=78.89;

  double total=English+Maths+ss+science+Hindi;
  double percentage=(total*100)/500;

  if(percentage > 70){
    print("Distinction");
  }
  else if(percentage <=70 && percentage>=60){
    print("First Class");
  }
  else if(percentage<=60 && percentage>=45){
    print("Second Class");
  }
  else if(percentage>=45 && percentage<=35){
    print("Pass");
  }
  else if(percentage<=35){
    print("Fail");
  }
}
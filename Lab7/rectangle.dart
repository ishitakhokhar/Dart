void main(){
  int length=20;
  int breadth=30;

  Rectangle r=Rectangle(length, breadth);
  print(r.length);
  print(r.breadth);
}

class Rectangle {
  int? length;
  int? breadth;

  Rectangle(int length,int breadth){
    this.length=length;
    this.breadth=breadth;
  }
}
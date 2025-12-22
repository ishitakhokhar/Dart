// WAP to create a Car class with a parameterized constructor
void main(){
  String color="Black";
  int price=100000000;
  String model="Bently";

  Car c=Car(color, price, model);
  c.printCarDetails();

}
class Car {
  String? color;
  int? price;
  String? model;

 Car(String color,int price,String model){
   this.color=color;
   this.price=price;
   this.model=model;
 }

 void printCarDetails(){
   print(this.color);
   print(this.price);
   print(this.model);
 }
}
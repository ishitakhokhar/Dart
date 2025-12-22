// WAP to find friends detail by their name using dictionary. (Create local dictionary and search
// from it using Map<String,Object?> & Model Class).

void main(){
  Map<String,Friend> friends={};

  friends["friend1"]=Friend("1234567890", "Ishita", "City");

  print("Phonenumber of My is :${friends["friend1"]!.Phonenumber}Name of : ${friends["friend1"]!.name} Address of friend is ${friends["friend1"]!.address}");
}

class Friend {
  String Phonenumber="";
  String name="";
  String address="";

  Friend(this.Phonenumber,this.name,this.address);
}
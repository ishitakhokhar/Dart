void main(){
  List<String> li=['Delhi','Mumbai','Bangalore','Hyderabad','Ahmedabad'];

  print("List : $li");

  for(int i=0;i<li.length;i++){
    if(li[i]=='Ahmedabad'){
      li[i]='Surat';
    }
  }
  print(li);
}
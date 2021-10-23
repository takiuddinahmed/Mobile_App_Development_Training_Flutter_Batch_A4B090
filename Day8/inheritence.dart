// interitence
class Man{
  String? name;
  int? age;
  void introduce(){
    print("Hey, I'm $name & $age years old");
  }
  Man(String _name, int _age){
    name = _name;
    age = _age;
  }
}
class Student extends Man {
  int? roll;
  Student(String _name, int _age, int _roll):super(_name,_age){
    roll = _roll;
  }
  sayRoll()=>print(roll);
  
  @override
  introduce(){
    print("Hey, I'm $name & roll $roll");
  }
}
main(){
  var std1 = new Student("chatri",30,-1);
  std1.introduce();
  std1.sayRoll();
}
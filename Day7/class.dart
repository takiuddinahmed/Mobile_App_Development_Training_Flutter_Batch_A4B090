class Man{
  String? name;
  int? height;
  int? age;

  void introduce(){
    print("Hi, I'm $name");
  }

  void sayDetails(){
    print("I'm $name, $age years old and my height is $height");
  }

  Man(String n, int h, int a){
    name = n;
    height = h;
    age = a;
  }
}

void main(){
  Man kito = new Man("Kito", 8,500);
  var pito = new Man("Pito", 9,600);
  kito.sayDetails();
  pito.sayDetails();
}


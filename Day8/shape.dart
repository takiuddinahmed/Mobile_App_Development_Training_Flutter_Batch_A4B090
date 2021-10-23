class Shape {
  String? name;
  Shape(String name){
    this.name = name;
  }
  double area(){
    return 0;
  }
  void sayName(){
    print("Shape name is $name");
  }
}
class Triangle extends Shape{
  int base = 1;
  int height = 1;
  Triangle(String _name, int _base, int _height):super(_name){
    this.base = _base;
    this.height = _height;
  }
  @override
  double area()=>.5*base*height;
  // double area(){
  //   return .5*base*height;
  // }
}
void main(){
  var t = new Triangle("tttt",23,16);
  print(t.area());
  t.sayName();
}
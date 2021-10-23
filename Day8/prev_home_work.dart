class Triangle {
  int base = 1;
  int height = 1;

  Triangle(int _base, int _height){
    base = _base;
    height = _height;
  }

  double area(){
    return 0.5 * base * height;
  }
}

void main(){
  var t1 = new Triangle(5, 6);
  var t2 = new Triangle(7, 3);
  var t3 = new Triangle(7, 9);

  var t1Area = t1.area();
  var t2Area = t2.area();
  var t3Area = t3.area();

  if(t1Area > t2Area && t1Area > t3Area){
    print("t1 is large");
  }
  else if(t2Area > t1Area && t2Area > t3Area){
    print("t2 is large");
  }
  else{
    print("t3 is large");
  }

}
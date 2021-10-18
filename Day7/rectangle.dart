class Rectange{
  int length = 1;
  int width = 1;

  Rectange(int l, int w){
    length = l;
    width = w;
  }

  int area(){
    int a = length * width;
    return a;
  }
}

void main(){
  var rec1 = new Rectange(10, 8);
  var rec2 = new Rectange(9, 9);

  if (rec1.area() > rec2.area()){
    print("Rec 1 is large");

  }
  else{
    print("Rec 2 is large");
  }
}
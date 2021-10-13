void main(){

  int n = -801;
  if(isEven(n)){
    print("$n is even");
  }
  else{
    print("$n is odd");
  }

}

bool isEven(int n){
  bool res = false;
  if (n % 2 ==0){
    res = true;
  }

  return res;
}
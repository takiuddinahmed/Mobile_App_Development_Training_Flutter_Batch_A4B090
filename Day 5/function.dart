void main(){
  showName();
  showGivenName("Kuwasha");
  showGivenName("123");
  int result = square(225);
  print(result);
}

void showName(){
  print("Hey!!! My name is Tom");
}

void showGivenName(String name){
  print("Hey!! Your name is $name");
}

int square(int n){
  int result = n * n;
  return result;
}

void checkLeapYear(int year){
  if (year % 400 == 0){
    print("${year} is leap year. ");
  }
  else if(year % 4 == 0 && year % 100 != 0){
    print("${year} is leap year. ");
  }
  else{
    print("${year} is not leap year. ");
  }
}

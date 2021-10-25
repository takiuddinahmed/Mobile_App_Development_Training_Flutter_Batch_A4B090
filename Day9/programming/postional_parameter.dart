main(){
  funcNamed(3,d:8,e:9);
}


/// postional optional parameter
funcPositional (int a, [int b = 1, int c = 2, int d = 3, int e=4, int f=5]){
  print("a=$a b=$b c=$c d=$d e=$e f=$f");
}

/// named optional parameter
funcNamed (int a, {int b = 1, int c = 2, int d = 3, int e=4, int f=5}){
  print("a=$a b=$b c=$c d=$d e=$e f=$f");
}


int idx = 0;

class Name{
  int id = 1;
  String name ="";
  bool isFavorite = false;

  Name({required this.name}){
    this.id = idx++;
  }
  toggleFavorite(){
    this.isFavorite = !this.isFavorite;
  }

}

List<Name> names = [
  Name(name: "A"),
  Name(name: "B"),
  Name(name: "C"),
  Name(name: "D"),
  Name(name: "E"),
  Name(name: "F"),
  Name(name: "G"),
];


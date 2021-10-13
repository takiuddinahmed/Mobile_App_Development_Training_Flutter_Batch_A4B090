void main() {
  String maleName = getFullName("Masud Rana", "male"); // Mr. Masud Rana
  String femaleName = getFullName("Elizabeth Khatun", "female"); // Miss Elizabeth Khatun
  String noGender = getFullName("Alex Bhomra", "");

  print(maleName);
  print(femaleName);
  print(noGender);
}

String getFullName(String name, String gender){
  String fullName = "";
  if(gender == "male"){
    fullName = "Mr. $name";
  }
  else if(gender == "female"){
    fullName = "Miss $name";
  }
  else{
    fullName = name;
  }
  return fullName;
}
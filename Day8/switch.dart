void main() {
  var status = "completededdde";

  switch(status){
    case "notstarted":
      print("The project is not started");
      break;
    case "processing":
      print("The project is in processing");
      break;
    case "completed":
      print("The project completed");
      break;
    default:
      print("Status not match");
      break;
  }


  // if(status == "processing"){
  //   print("The project is in processeing");
  // }
  // else if(status == "notstarted"){
  //   print("The project not started");
  // }
  // else if(status == "completed"){
  //   print("The project is in completed");
  // }
}
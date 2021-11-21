import 'package:flutter/material.dart';
import 'package:navigation/views.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      home: Home()
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 2;

  var views = [
    HomeView(),
    ContactView(),
    MessageView()
  ];

  Widget _show(index){
    return views[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            title: Text("Contacts")
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_sharp),
            title: Text("Messages")
            ),
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },

      ),
      body: _show(_selectedIndex),
    );
  }
}




// class Home extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 2,
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Navigation App"),
//           bottom: TabBar(
//             tabs: [
//               Tab(text: "Tab 1"),
//               Tab(text: "Tab 2"),
//               Tab(text: "Tab 3"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Text("Tab 1"),
//             Text("Tab 2"),
//             Text("Tab 3"),
//           ],
//         )
//       ),
//     );
//   }
// }
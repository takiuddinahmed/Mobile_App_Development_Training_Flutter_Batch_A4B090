import 'package:flutter/material.dart';
import 'package:navigation/views/views.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      home: HomeApp() 
    );
  }
}


class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _viewIndex = 1;
   var views = [
    HomePage(),
    ContactPage(),
    MessagePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: views[_viewIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Icon(Icons.account_circle, size: 70,),
                  // Image.network(""),
                  Text("Mr. Maznu Sir")
                ],
              )
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  onTap: (){
                    setState(() {
                      _viewIndex = 0;
                    });
                    Navigator.pop(context);
                  }
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.contacts),
                  title: Text("Contact"),
                  onTap: (){
                    setState(() {
                      _viewIndex = 1;
                    });
                    Navigator.pop(context);
                  }
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.message),
                  title: Text("Message"),
                  onTap: (){
                    setState(() {
                      _viewIndex = 2;
                    });
                    Navigator.pop(context);
                  }
                ),
              ),
            ),

          ],)
      )
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _viewIndex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("Home")
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.contact_phone),
      //       title: Text("Home")
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       title: Text("Message")
      //     ),
      //   ],
      //   onTap: (index){
      //     setState(() {
      //       _viewIndex = index;
      //     });
      //   },
      // ),
      
    );
  }
}



// class HomeApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.home),
//           title: Text("Navigation"),
//           bottom: TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.home)),
//               Tab(icon: Icon(Icons.contact_phone)),
//               Tab(icon: Icon(Icons.message)),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             HomePage(),
//             ContactPage(),
//             MessagePage(),
//           ],
//         )
//       ),
//     );
//   }
// }
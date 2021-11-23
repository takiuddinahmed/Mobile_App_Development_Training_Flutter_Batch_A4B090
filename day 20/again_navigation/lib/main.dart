import 'package:flutter/material.dart';
import 'package:again_navigation/views.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Again Nav',
      home: HomePage()
    );
  }
}


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    int _selectedIndex = 0;

  var _views = [
    HomeView(),
    ContactView(),
    MessageView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Again Nav'),
      ),
      body: _views[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('A'),
              ),
              accountName: Text('Lackotjen Rahman'),
              accountEmail: Text('lakfjoijloja@lkajf.com'),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
             ), 
            ListTile(
              title: Text('Contact'),
              leading: Icon(Icons.contact_phone_rounded),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
             ), 
            ListTile(
              title: Text('Message'),
              leading: Icon(Icons.message),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
             ), 
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.manage_accounts),
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.pop(context);
              },
             ), 
          ],
        ),
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;

//   var _views = [
//     HomeView(),
//     ContactView(),
//     MessageView(),
//     ProfileView(),
//   ];


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Again Nav'),
//       ),
//       body: _views[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (index){
//           setState(() {
//             _selectedIndex = index;
//           });
        
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//             backgroundColor: Colors.redAccent,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.contacts),
//             title: Text('Contacts'),
//             backgroundColor: Colors.blueAccent,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             title: Text('Message'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Profile'),
//           ),
//         ])
//     );
//   }
// }



// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Again Navigation'),
//           bottom: TabBar(
//             tabs: [
//               Tab(icon: Icon(Icons.home),),
//               Tab(icon: Icon(Icons.contact_phone_rounded),),
//               Tab(icon: Icon(Icons.message),),
//               Tab(icon: Icon(Icons.manage_accounts),)
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             HomeView(),
//             ContactView(),
//             MessageView(),
//             ProfileView()
//           ],
//         ),
//       ),
//     );
//   }
// }
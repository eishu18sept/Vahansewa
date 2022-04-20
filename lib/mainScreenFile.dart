import 'package:flutter/material.dart';
import 'package:vahansewa_app/screens/exploring_docs.dart';
import 'package:vahansewa_app/screens/home_screen.dart';
import 'package:vahansewa_app/screens/job_orders.dart';
import 'package:vahansewa_app/screens/portfolio.dart';

class MainScreenFile extends StatefulWidget {
  MainScreenFile({Key? key}) : super(key: key);

  @override
  _MainScreenFileState createState() => _MainScreenFileState();
}

class _MainScreenFileState extends State<MainScreenFile> {
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  int currentIndex = 0;

  static List<Widget> myScreens = <Widget>[
    HomeScreen(),
    Portfolio(),
    ExploreDocs(),
    JobOrders(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: myScreens.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 16,
        unselectedFontSize: 10,
        iconSize: 30,
        backgroundColor: Colors.white,
        elevation: 25,
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_media),
            label: 'Exploring Docs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Job Orders',
          ),
        ],
      ),
    );
  }
}

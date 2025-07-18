import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/screens/favourite_page.dart';
import 'package:ta_fooddeliveryapp/screens/homepage.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int selectedIndex = 0;
  void onBottomNavBarTap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }

  List<Widget> bodyOptions = [
    Homepage(),
    FavouritePage(),
    Center(
      child: Text('Account Page'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        drawer: const Drawer(
          child: Center(
            child: Column(
              children: [
                Text(
                  'item 1',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Text("El-Ta'aam - Food Delivery"),
          centerTitle: true,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: bodyOptions[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.deepOrange,
          onTap: onBottomNavBarTap,
        ),
      ),
    );
  }
}

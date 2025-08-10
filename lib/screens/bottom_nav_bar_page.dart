import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/screens/account_page.dart';
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
    AccountPage(),
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
          title: const Text(
            "Ta'aam - Food Delivery App",
            style: TextStyle(
              color: Colors.deepOrange,
            ),
          ),
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
                icon: Icon(Icons.favorite), label: 'Favourite'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Person'),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          onTap: onBottomNavBarTap,
        ),
      ),
    );
  }
}

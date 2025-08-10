import 'package:flutter/material.dart';
import 'package:ta_fooddeliveryapp/screens/bottom_nav_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        listTileTheme: ListTileThemeData(
          iconColor: Colors.deepOrange,
        ),
        fontFamily: 'OpenSans',
        dividerTheme: DividerThemeData(
          indent: 20,
          endIndent: 20,
          thickness: 1.5,
        ),
        textTheme: TextTheme(),
      ),
      home: const BottomNavBarPage(),
    );
  }
}

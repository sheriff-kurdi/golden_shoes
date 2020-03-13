import 'package:flutter/material.dart';
import 'screens/products_screen.dart';
import 'package:golden_shoes/util/categories.dart';
import 'components/down_navigator.dart';//import 'screens/startup_screen.dart';
import 'screens/home_screen.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/f': (context) => HomeScreen(),
        ProductsScreen.allProducts: (context) =>
            ProductsScreen(category: categories.AllProducts),
        ProductsScreen.classic: (context) =>
            ProductsScreen(category: categories.Classic),
        ProductsScreen.simiClassic: (context) =>
            ProductsScreen(category: categories.SimiClassic),
        ProductsScreen.casual: (context) =>
            ProductsScreen(category: categories.Casual),
        ProductsScreen.child: (context) =>
            ProductsScreen(category: categories.Child),
        ProductsScreen.baby: (context) =>
            ProductsScreen(category: categories.Baby),
      },
      home: Scaffold(
        body: DownNavigator(),
        
      ),
    );
  }
}

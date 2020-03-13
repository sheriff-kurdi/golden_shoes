import 'package:golden_shoes/screens/categories_screen.dart';
import 'package:golden_shoes/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:golden_shoes/util/categories.dart';
//import 'package:golden_shoes/screens/products_screen.dart';
import 'package:golden_shoes/components/products_list_comp.dart';

/// This Widget is the main application widget.
class DownNavigator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MyStatefulWidget();
   
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    ProductsListComponent(
      isHome: false,
      category: categories.SimiClassic,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffffc716),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Classic'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Classic'),
          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white70,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}

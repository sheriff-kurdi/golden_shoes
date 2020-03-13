import 'package:flutter/material.dart';
import 'package:golden_shoes/widgets/category_intro.dart';
//import 'package:golden_shoes/widgets/category_box.dart';
//import 'package:golden_shoes/components/products_list_comp.dart';
//import 'package:golden_shoes/screens/products_screen.dart';
import 'package:golden_shoes/screens/products_screen.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff86c01f),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 70.0,
            ),
            CategoryIntro(
              category: ProductsScreen.classic,
              image: "images/classic.jpg",
              text: "Classic",
            ),
            CategoryIntro(
              category: ProductsScreen.simiClassic,
              image: "images/simiClassic.jpg",
              text: "Simi Classic",
            ),
            CategoryIntro(
              category: ProductsScreen.casual,
              image: "images/casual.jpg",
              text: "Casual",
            ),
            CategoryIntro(
              category: ProductsScreen.child,
              image: "images/child.jpg",
              text: "Child",
            ),
            CategoryIntro(
              category: ProductsScreen.baby,
              image: "images/baby.jpg",
              text: "Baby",
            ),
          ],
        ),
      ),
    );
  }
}

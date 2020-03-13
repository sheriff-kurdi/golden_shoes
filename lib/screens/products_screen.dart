import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:golden_shoes/components/products_list_comp.dart';
import 'package:golden_shoes/util/categories.dart';
//import 'package:loading_indicator/loading_indicator.dart';

class ProductsScreen extends StatefulWidget {
  final categories category;
  static String allProducts = "allProducts";
  static String classic = "classic";
  static String simiClassic = "simiClassic";
  static String casual = "casual";
  static String child = "child";
  static String baby = "baby";
  ProductsScreen({@required this.category});

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff86c01f),
      appBar: AppBar(
        backgroundColor: Color(0xff86c01f),
      ),
      body: ListView(
        children: <Widget>[
           Text(
                    widget.category.toString().split('.').last,
                    style: TextStyle(
                        fontFamily: 'pacifico',
                        //fontFamily: 'Source Sand Pro',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
          ProductsListComponent(
            isHome: false,
            category: widget.category,
          )
        ],
      ),
    );
  }
}

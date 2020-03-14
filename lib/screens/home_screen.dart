import 'package:flutter/material.dart';
import 'package:flutter_images_slider/flutter_images_slider.dart';
//import 'package:golden_shoes/util/categories.dart';
import 'package:golden_shoes/components/products_intro_comp.dart';
import 'package:golden_shoes/util/categories.dart';
//import 'package:golden_shoes/widgets/category_box.dart';
//import 'package:golden_shoes/widgets/category_intro.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;

  final List<String> imgList = [
    'images/casual.jpg',
    'images/baby.jpg',
    'images/classic.jpg',
    'images/simiClassic.jpg',
    'images/child.jpg',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff86c01f),
        body: Column(
          children: <Widget>[
            ImagesSlider(
              items: map<Widget>(imgList, (index, i) {
                return Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(i), fit: BoxFit.cover)),
                );
              }),
              autoPlay: true,
              viewportFraction: 1.0,
              aspectRatio: 2.0,
              distortion: false,
              align: IndicatorAlign.bottom,
              indicatorWidth: 5,
              updateCallback: (index) {
                setState(() {
                  current = index;
                });
              },
            ),
            Expanded(
              child: ProductsIntroComponent(
                category: categories.AllProducts,
                isHome: false,
              ),
            ),
            Expanded(
              child: ProductsIntroComponent(
                category: categories.AllProducts,
                isHome: false,
              ),
            ),
          ],
        ));
  }
}

/*

ListView(
      children: <Widget>[
        ImagesSlider(
          items: map<Widget>(imgList, (index, i) {
            return Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(i), fit: BoxFit.cover)),
            );
          }),
          autoPlay: true,
          viewportFraction: 1.0,
          aspectRatio: 2.0,
          distortion: false,
          align: IndicatorAlign.bottom,
          indicatorWidth: 5,
          updateCallback: (index) {
            setState(() {
              current = index;
            });
          },
        ),
        SizedBox(
          height: 10.0,
        ),
       Text("ddddd"),
        
       ProductsListComponent(isHome: false,category: categories.AllProducts,),
       Text("ddddd"),
        
        
      ],
    ),
*/

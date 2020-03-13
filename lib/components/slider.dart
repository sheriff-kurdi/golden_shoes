import 'package:flutter_images_slider/flutter_images_slider.dart';
import 'package:flutter/material.dart';

class Slider extends StatefulWidget {
  @override
  _SliderState createState() => _SliderState();
}

class _SliderState extends State<Slider> {
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
    return ImagesSlider(
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
        );
  }
}
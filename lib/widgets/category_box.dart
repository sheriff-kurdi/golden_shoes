import 'package:flutter/material.dart';


class CategorysBox extends StatelessWidget {
  const CategorysBox({
    @required this.text,
    @required this.image,
    @required this.onPress,
    Key key,
  }) : super(key: key);
  final String image;
  final String text;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: () {
        onPress();
      },
      child: GridTile(
        child: Image.asset(image),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            text,
            textAlign: TextAlign.center,
            //style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}

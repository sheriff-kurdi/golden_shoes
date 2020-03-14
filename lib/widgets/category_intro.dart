import 'package:flutter/material.dart';

class CategoryIntro extends StatelessWidget {
  final String category;
  final String text;
  final String image;
  const CategoryIntro({
    @required this.category,
    @required this.text,
    @required this.image,
    Key key,
  }) : super(key: key);

   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, category);
        //print("hello");
      },
      child: Container(
        margin: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                     color: Color.fromRGBO(0, 0, 0, 0.09),
                  offset: Offset(1.9, 1.0),
                  blurRadius: 0.1,
                  spreadRadius: 0.5,
                )
              ],
            border: Border.all(color: Color(0xff86c01f)),
            color: Color(0xff86c01f),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: double.infinity,
        height: 90,
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage(image),
              
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Great Answer',
                //fontFamily: 'Source Sand Pro',
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

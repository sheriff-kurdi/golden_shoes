import 'package:flutter/material.dart';

class ProductsIntro extends StatelessWidget {
  const ProductsIntro({
    Key key,
    @required this.id,
    @required this.name,
    @required this.price,
    @required this.image,
  }) : super(key: key);

  final int id;
  final String name;
  final int price;
  final String image;
  final String imageURL = "https://goldenshoes.azurewebsites.net/Uploads";
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2.0, right: 0.0, bottom: 20.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff86c01f)),
          color: Color(0xff86c01f),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      width: double.infinity,
      height: 30,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 120.0,
              height: 140.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(imageURL + "/" + image)),
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                color: Colors.redAccent,
              ),
            ),
          ),
      
       
        ],
      ),
    );
  }
}

/*
Column(children: <Widget>[
      Text(name),
      Image.network(imageURL +"/"+ image),
      Text(price.toString()),
    ],)
    
*/
/*
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

*/

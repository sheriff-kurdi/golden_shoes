import 'package:flutter/material.dart';

class ProductsItem extends StatelessWidget {
  const ProductsItem({
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
      margin: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 20.0),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff86c01f)),
          color: Color(0xff86c01f),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      width: 100,
      height: 40,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 120.0,
              height: 180.0,
              decoration: BoxDecoration(
                
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageURL + "/" + image)),
                borderRadius: BorderRadius.all(Radius.circular(13.0)),
                color: Colors.redAccent,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            children: <Widget>[
              Text(
                "$name",
                style: TextStyle(
                    fontFamily: 'Great Answer',
                    //fontFamily: 'Source Sand Pro',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\$ $price",
                style: TextStyle(
                    fontFamily: 'Source Sand Pro',
                    //fontFamily: 'Source Sand Pro',
                    fontSize: 20,
                    color: Colors.white,
                    ),
              ),
            ],
          )
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

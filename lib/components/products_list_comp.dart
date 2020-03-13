import 'package:flutter/material.dart';
import 'package:golden_shoes/services/products_services.dart';
import 'package:golden_shoes/widgets/products_item.dart';
import 'package:golden_shoes/util/categories.dart';
import 'package:loading_indicator/loading_indicator.dart';

class ProductsListComponent extends StatefulWidget {
  // if this is true it gonna show all products, else it gonna show only 4 prooducts
  final bool isHome;
  final categories category;
  ProductsListComponent({@required this.isHome, @required this.category});
  @override
  _ProductsListComponentState createState() => _ProductsListComponentState();
}

class _ProductsListComponentState extends State<ProductsListComponent> {
  List productsList;

  String getProductsUrl() {
    switch (widget.category) {
      case categories.AllProducts:
        return "https://goldenshoes.azurewebsites.net/products/ProductsJson";
        break;
      case categories.Classic:
        return "https://goldenshoes.azurewebsites.net/home/ClassicJson";
        break;
      case categories.SimiClassic:
        return "https://goldenshoes.azurewebsites.net/home/SimiClassicJson";
        break;
      case categories.Casual:
        return "https://goldenshoes.azurewebsites.net/home/CasualJson";
        break;
      case categories.Child:
        return "https://goldenshoes.azurewebsites.net/home/ChildJson";
        break;
      case categories.Baby:
        return "https://goldenshoes.azurewebsites.net/home/BabyJson";
        break;
      default:
        return "https://goldenshoes.azurewebsites.net/home/ProductsJson";
    }
  }

  void setProductsList() async {
    productsList = await getProducts(getProductsUrl());
    this.setState(() {
      productsList = productsList;
    });
    print(productsList);
  }

  @override
  void initState() {
    super.initState();
    setProductsList();
  }

  int listItemCount() {
    if (widget.isHome) {
      if (productsList.length > 4) {
        return 4;
      } else {
        return productsList.length;
      }
    } else {
      return productsList.length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: ScrollPhysics(), // to disable GridView's scrolling
        shrinkWrap: true,
        itemCount: productsList == null ? 1 : listItemCount(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 8 / 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 0),
        itemBuilder: (BuildContext context, int index) {
          return productsList == null
              ? LoadingIndicator(
                  indicatorType: Indicator.ballPulse,
                  color: Colors.black54,
                )
              : ProductsItem(
                  id: productsList[index]["id"],
                  name: productsList[index]["name"],
                  price: productsList[index]["price"],
                  image: productsList[index]["image"],
                );
        },
      ),
    );
  }
}

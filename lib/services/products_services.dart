import 'dart:convert';

import 'package:http/http.dart' as http;


getProducts(String url) async {
  List products;
  var res = await http.get(url);

  if (res.statusCode == 200) {
    products = jsonDecode(res.body);
    return products;
  }else{
    return products;
  }
}


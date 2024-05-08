import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'model/product.dart';

Future<void> main() async {
  print("--------------------------");

  var url = Uri.https('fakestoreapi.com', '/products', {'q': '{https}'});
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponseList = convert.jsonDecode(response.body) as List<dynamic>;

    jsonResponseList.forEach((element) {
      print("Element:${element}");
      print("--------------------------------------");
      final conv = Product.fromJson(element);
      print("Conv.id:${conv.id}");
      print("Conv.title:${conv.title}");
      print("Conv.price:${conv.price}");
      print("Conv.description:${conv.description}");
      print("Conv.category:${conv.category}");
      print("Conv.image:${conv.image}");
    });

      
    print('Items: ${jsonResponseList.length}');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

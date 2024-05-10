import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../model/cart_model.dart';
import 'cart_api.dart';


class CartApiImpl implements CartApi {

  static const String urlEndpoint = 'fakestoreapi.com';
  static const String urlCarts = '/carts';

  @override
  Future<ResponseGetAllCarts> getAllCarts() {
    // TODO: implement getAllCarts
    throw UnimplementedError();
  }

  @override
  Future<ResponseGetCart> getSingleCart(int id) async {
    try{
      var url = Uri.https(urlEndpoint, '$urlCarts/$id', {'q': '{https}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        final conv = CartModel.fromJson(jsonResponse);
        return right(conv);
      } else {
        return left(response.statusCode.toString());
      }
    }catch(error){
        return left(error.toString());
    }

  }




}
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../model/product_model.dart';
import 'products_api.dart';

class ProductsApiImpl implements ProductsApi{

  static const String urlEndpoint = 'fakestoreapi.com';
  static const String urlProducts = '/products';

  @override
  Future<void> getAllProducts(Function (ResponseGetAllProducts) callback) async {
    ResponseGetAllProducts responseGetAllProducts = none();
    callback(responseGetAllProducts);
    var url = Uri.https(urlEndpoint, urlProducts, {'q': '{https}'});
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponseList = convert.jsonDecode(response.body) as List<dynamic>;
      final List<ProductModel> resultList = [];
      for(final element in jsonResponseList){
          final conv = ProductModel.fromJson(element);
          resultList.add(conv);
      }
      responseGetAllProducts = some(right(resultList));
      callback(responseGetAllProducts);
    } else {
      responseGetAllProducts = some(left(response.statusCode.toString()));
      callback(responseGetAllProducts);
    }
  }
  
  @override
  Future<void> getSingleProduct(int id, Function (ResponseGetProduct) callback) async {
    ResponseGetProduct responseGetProduct = none();
    callback(responseGetProduct);
    try{
      var url = Uri.https(urlEndpoint, '$urlProducts/$id', {'q': '{https}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponseList = convert.jsonDecode(response.body) as dynamic;
        final conv = ProductModel.fromJson(jsonResponseList);
        responseGetProduct = some(right(conv));
        callback(responseGetProduct);
      } else {
        responseGetProduct = some(left(response.statusCode.toString()));
        callback(responseGetProduct);
      }
    }catch(error){
        responseGetProduct = some(left(error.toString()));
        callback(responseGetProduct);
    }
  }

  



}
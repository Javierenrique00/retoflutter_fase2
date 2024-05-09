import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../model/product_model.dart';
import 'products_api.dart';

class ProductsApiImpl implements ProductsApi{

  static const String urlEndpoint = 'fakestoreapi.com';
  static const String urlProducts = '/products';

  @override
  Future<ResponseGetAllProducts> getAllProducts() async {
    try{
      var url = Uri.https(urlEndpoint, urlProducts, {'q': '{https}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponseList = convert.jsonDecode(response.body) as List<dynamic>;
        final List<ProductModel> resultList = [];
        for(final element in jsonResponseList){
            final conv = ProductModel.fromJson(element);
            resultList.add(conv);
        }
        return right(resultList);
      } else {
        return left(response.statusCode.toString());
      }
    }catch(error){
      return left(error.toString());
    }
  }
  
  @override
  Future<ResponseGetProduct> getSingleProduct(int id) async {
    try{
      var url = Uri.https(urlEndpoint, '$urlProducts/$id', {'q': '{https}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponseList = convert.jsonDecode(response.body) as dynamic;
        final conv = ProductModel.fromJson(jsonResponseList);
        return right(conv);
      } else {
        return left(response.statusCode.toString());
      }
    }catch(error){
        return left(error.toString());
    }
  }

  



}
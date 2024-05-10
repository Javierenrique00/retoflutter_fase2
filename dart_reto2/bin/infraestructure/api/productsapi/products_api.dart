
import 'package:dartz/dartz.dart';

import '../../../model/product/product_model.dart';

typedef ResponseGetAllProducts = Either<String, List<ProductModel>>;
typedef ResponseGetProduct = Either<String, ProductModel>;

abstract class ProductsApi {

  Future<ResponseGetAllProducts> getAllProducts();
  Future<ResponseGetProduct> getSingleProduct(int id);
  
  
}
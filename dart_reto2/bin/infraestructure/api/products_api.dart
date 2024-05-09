
import 'package:dartz/dartz.dart';

import '../../model/product_model.dart';

typedef ResponseGetAllProducts = Option<Either<String, List<ProductModel>>>;
typedef ResponseGetProduct = Option<Either<String, ProductModel>>;

abstract class ProductsApi {

  Future<void> getAllProducts(Function (ResponseGetAllProducts) callback);

  Future<void> getSingleProduct(int id,Function (ResponseGetProduct) callback);
  

}
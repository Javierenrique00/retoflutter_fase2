
import '../../../model/product/product_model.dart';
import '../common/baseio_api.dart';
import '../common/paths.dart';
import 'products_api.dart';

class ProductsApiImpl implements ProductsApi{

  final productsApi = BaseioApi<ProductModel>(urlpath: Paths.urlProducts,serializer: (p0) => ProductModel.fromJson(p0),);
  
  @override
  Future<ResponseGetAllProducts> getAllProducts() => productsApi.getAll();
  
  @override
  Future<ResponseGetProduct> getSingleProduct(int id)  => productsApi.getSingle(id);

}
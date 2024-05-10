
import '../../../model/cart/cart_model.dart';
import '../common/baseio_api.dart';
import 'cart_api.dart';
import '../common/paths.dart';

class CartApiImpl implements CartApi {

  final cartApi = BaseioApi<CartModel>(urlpath: Paths.urlCarts,serializer: (p0) => CartModel.fromJson(p0),);

  @override
  Future<ResponseGetAllCarts> getAllCarts() => cartApi.getAll();

  @override
  Future<ResponseGetCart> getSingleCart(int id) => cartApi.getSingle(id);

}
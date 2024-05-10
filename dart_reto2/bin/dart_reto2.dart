import 'infraestructure/api/baseio_api.dart';
import 'infraestructure/api/cart_api_impl.dart';
import 'infraestructure/api/products_api_impl.dart';
import 'infraestructure/api/users_api_impl.dart';
import 'model/cart_model.dart';

Future<bool> espera5Seconds() async {
  await Future.delayed(const Duration(seconds: 5));
  print('5 seconds');
  return true;
}

main() async {
  print("--------------------------");

  // final allProductsEither = await ProductsApiImpl().getAllProducts();
  // allProductsEither.fold(
  //   (l) => print('error code $l'),
  //   (r) => print('loaded all products: ${r.length}'),
  // );

  // print('-----------------------------');
  // final singleProductEither = await ProductsApiImpl().getSingleProduct(5);
  // singleProductEither.fold(
  //   (l) => print('error code $l'),
  //   (r) => print('loaded product: $r'),
  // );

  // print('-----------------------------');
  // final allUsersEither = await UsersApiImpl().getAllUsers();
  // allUsersEither.fold(
  //   (l) => print('error code $l'),
  //   (r){
  //       print('loaded all users: ${r.length}');
  //       print('user1:${r[0]}');
  //       },
  // );

  // print('-----------------------------');
  // final singleUserEither = await UsersApiImpl().getSingleUser(5);
  // singleUserEither.fold(
  //   (l) => print('error code $l'),
  //   (r) => print('loaded user: $r'),
  // );

  // print('-----------------------------');
  // final singleCartEither = await CartApiImpl().getSingleCart(1);
  // singleCartEither.fold(
  //   (l) => print('error code $l'),
  //   (r) => print('loaded cart: $r'),
  // );

// print('-----------------------------');

  final cartApi = BaseioApi<CartModel>(urlpath: "/carts",serializer: (p0) => CartModel.fromJson(p0),);

  final allCartEither = await cartApi.getAll();
  allCartEither.fold(
    (l) => print('error code $l'),
    (r){
        print('loaded all carts: ${r.length}');
        print('cart1:${r[0]}');
        },
  );

// print('-----------------------------');

  final singleCartEither = await cartApi.getSingleUser(5);
  singleCartEither.fold(
    (l) => print('error code $l'),
    (r) => print('loaded cart: $r'),
  );

  var finaly = await espera5Seconds();
  print('Program End $finaly.----------------');
}

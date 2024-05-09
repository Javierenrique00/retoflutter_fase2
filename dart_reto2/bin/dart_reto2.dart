import 'infraestructure/api/products_api_impl.dart';

Future<bool> espera5Seconds() async {
  await Future.delayed(const Duration(seconds: 5));
  print('5 seconds');
  return true;
}

main() async {
  print("--------------------------");

  final allProductsEither = await ProductsApiImpl().getAllProducts();
  allProductsEither.fold(
    (l) => print('error code $l'),
    (r) => print('loaded all products: ${r.length}'),
  );

  final singleProductEither = await ProductsApiImpl().getSingleProduct(5);
  singleProductEither.fold(
    (l) => print('error code $l'),
    (r) => print('loaded product 5: $r'),
  );

  var finaly = await espera5Seconds();
  print('Program End $finaly.----------------');
}

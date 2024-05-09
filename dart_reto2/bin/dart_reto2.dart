import 'infraestructure/api/products_api_impl.dart';

Future<bool> espera5Seconds() async {
  await Future.delayed(const Duration(seconds: 5));
  print('5 seconds');
  return true;
}

main() async {
  print("--------------------------");

  ProductsApiImpl().getAllProducts((productsEither) {
    productsEither.fold(
      () => print('Loading all products (waitting)...'),
      (dataE) => dataE.fold(
        (l) => print('error code $l'),
        (r) => print('loaded all products: ${r.length}'),
      ),
    );
  });

  ProductsApiImpl().getSingleProduct(5, (singleProductEither) {
    singleProductEither.fold(
      () => print('Loading single products (waitting)...'),
      (dataE) => dataE.fold(
        (l) => print('error code $l'),
        (r) => print('loaded product 5: $r'),
      ),
    );
  });


  var finaly = await espera5Seconds();
  print('Program End $finaly.----------------');
}

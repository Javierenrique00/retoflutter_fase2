import 'dart:io';

import 'infraestructure/api/cart/cart.dart';
import 'infraestructure/api/products/products.dart';
import 'infraestructure/api/users/users.dart';

main() async {

  print("--------------------------");
  print('Presione Enter para empezar el programa:');
  stdin.readLineSync();
  
  final allProductsEither = await Products().getAllProducts();
  allProductsEither.fold(
    (l) => print('error code $l'),
    (r){
      print('loaded all products: qty:${r.length}');
      print('Primer producto: ${r[0]}');
    } ,
  );

  print('Presione Enter para continuar...');
  stdin.readLineSync();
  final singleProductEither = await Products().getSingleProduct(5);
  singleProductEither.fold(
    (l) => print('error code $l'),
    (r) => print('loaded single product: $r'),
  );

  print('Presione Enter para continuar...');
  stdin.readLineSync(); 
  final allUsersEither = await Users().getAllUsers();
  allUsersEither.fold(
    (l) => print('error code $l'),
    (r){
        print('loaded all users: qty:${r.length}');
        print('user1:${r[0]}');
        },
  );

  print('Presione Enter para continuar...');
  stdin.readLineSync();
  final singleUserEither = await Users().getSingleUser(5);
  singleUserEither.fold(
    (l) => print('error code $l'),
    (r) => print('loaded user: $r'),
  );

  print('Presione Enter para continuar...');
  stdin.readLineSync();
  final allCartEither = await Cart().getAllCarts();
  allCartEither.fold(
    (l) => print('error code $l'),
    (r){
        print('loaded all carts: qty:${r.length}');
        print('cart1:${r[0]}');
        },
  );


  print('Presione Enter para continuar...');
  stdin.readLineSync();
  final singleCartEither = await Cart().getSingleCart(1);
  singleCartEither.fold(
    (l) => print('error code $l'),
    (r) => print('loaded cart: $r'),
  );

  print('Program End. ----------------');
}

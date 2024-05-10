# Consumo api Fake Store

Este programa se desarrolló para el consumo de la API Fake Store: [Link fake Store](https://fakestoreapi.com/)

Se crean 3 apis para el consumo de los endpoints así:

- ProductsInterface
- UsersInterface
- CartInterface

Estas interfaces tienen su implementación correspondiente para acceder a todos los items o a cada uno específico por ID.

A continuación se muestra la interface que maneja el Cart -->

```dart
abstract class CartInterface {
  Future<ResponseGetAllCarts> getAllCarts();
  Future<ResponseGetCart> getSingleCart(int id);
}
```

La implementación de esta Cart -->

```dart
class Cart implements CartInterface {

  final cartApi = Baseio<CartModel>(urlpath: Paths.urlCarts,serializer: (p0) => cartModelFromJsonMapper(p0),);

  @override
  Future<ResponseGetAllCarts> getAllCarts() => cartApi.getAll();

  @override
  Future<ResponseGetCart> getSingleCart(int id) => cartApi.getSingle(id);
}
```

Se observa que todas las implementaciones, tienen la misma estructura, y lo único que cambia son los tipos de datos. Por tanto se crea una base genérica que describe como se accede a la Api, como se descerializa y como se manejan los errores.

Esto se hace con la clase Baseio, la cual en su constructor recibe 2 parámetros, el path del endPoint y el mapper fromJson.

Para la implementación del cart -->

```dart
final cartApi = Baseio<CartModel>(urlpath: Paths.urlCarts,serializer: (p0) => cartModelFromJsonMapper(p0),);
```

Para la parametrización de las rutas de los endpoint se crea un archivo paths.dart, con el cual se configuran las rutas de los endpoint de manera centralizada.

```dart
abstract class Paths {

  static const String urlEndpoint = 'fakestoreapi.com';
  static const String urlProducts = '/products';
  static const String urlCarts = '/carts';
  static const String urlUsers = '/users';

}
```

Las respuestas a cada llamado del api se hace de manera asíncrona, generando un Future el cual tiene un Either, para el manejo de algún posible error o de la respuesta recibida.

A continuación se muestra como se invoca el acceso desde el programa principal:

```dart
  final allCartEither = await Cart.getAllCarts();
  allCartEither.fold(
    (l) => print('error code $l'),
    (r){
        print('loaded all carts: qty:${r.length}');
        print('cart1:${r[0]}');
        },
  );
  ```

**Importante**:

El programa contiene lectura de la consola mediante stdin.readLineSync() y por tanto se debe ejecutar en la consola directamente. Esto es con el propósito de poder ir viendo como se leen los datos progresivamente para cada endpoint.

Para compilarlo se hace con el comando:

>_>     *dart dart_reto2.dart*

## Versiones

Package dependencies:

- Dart SDK version: 3.3.1 (stable)
- args: ^2.4.2
- dartz: ^0.10.1
- http: ^1.2.1

dev dependencies:

- lints: ^3.0.0
- test: ^1.24.0

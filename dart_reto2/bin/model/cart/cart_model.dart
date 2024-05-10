import 'package:json_annotation/json_annotation.dart';

import 'products_qty_model.dart';

part 'cart_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CartModel {
  final int id;
  final int userId;
  final String date;
  final List<ProductsQtyModel> products;

  CartModel( this.id,  this.userId, this.date, this.products);

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartModelToJson(this);

  @override
  String toString(){
    return 'CartModel('
    'id: $id, '
    'userId: $userId, '
    'date: $date, '
    'products: $products'
    ')';
  }
}
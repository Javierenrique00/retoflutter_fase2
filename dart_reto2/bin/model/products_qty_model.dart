import 'package:json_annotation/json_annotation.dart';

part 'products_qty_model.g.dart';

@JsonSerializable()
class ProductsQtyModel {
  final int productId;
  final int quantity;

  ProductsQtyModel( this.productId,  this.quantity);

  factory ProductsQtyModel.fromJson(Map<String, dynamic> json) => _$ProductsQtyModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsQtyModelToJson(this);

  @override
  String toString(){
    return 'ProductsQtyModel('
    'productId: $productId, '
    'quantity: $quantity'
    ')';
  }
}
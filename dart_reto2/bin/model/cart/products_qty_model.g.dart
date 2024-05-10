// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_qty_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsQtyModel _$ProductsQtyModelFromJson(Map<String, dynamic> json) =>
    ProductsQtyModel(
      (json['productId'] as num).toInt(),
      (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$ProductsQtyModelToJson(ProductsQtyModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };

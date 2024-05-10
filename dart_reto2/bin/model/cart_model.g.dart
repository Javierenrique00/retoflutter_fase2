// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      (json['id'] as num).toInt(),
      (json['userId'] as num).toInt(),
      json['date'] as String,
      (json['products'] as List<dynamic>)
          .map((e) => ProductsQtyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'date': instance.date,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

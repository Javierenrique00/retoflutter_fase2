import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  /// The generated code assumes these values exist in JSON.
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;

  Product({required this.id, required this.title, required this.price, required this.description, required this.category, required this.image});

  /// Connect the generated [_$ProductFromJson] function to the `fromJson`
  /// factory.
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

  /// Connect the generated [_$ProductToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
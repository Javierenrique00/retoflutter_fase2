import 'package:json_annotation/json_annotation.dart';

import 'geolocation_model.dart';

part 'address_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AddressModel {
  final String city;
  final String street;
  final int number;
  final String zipcode;
  final GeolocationModel geolocation;

  AddressModel(this.city, this.street, this.number, this.zipcode, this.geolocation);

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  @override
  String toString(){
    return 'AddressModel('
    'city: $city, '
    'street: $street, '
    'number: $number, '
    'zipcode: $zipcode, '
    'address: $geolocation'
    ')';
  }
  
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) => AddressModel(
      json['city'] as String,
      json['street'] as String,
      (json['number'] as num).toInt(),
      json['zipcode'] as String,
      GeolocationModel.fromJson(json['geolocation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressModelToJson(AddressModel instance) =>
    <String, dynamic>{
      'city': instance.city,
      'street': instance.street,
      'number': instance.number,
      'zipcode': instance.zipcode,
      'geolocation': instance.geolocation.toJson(),
    };

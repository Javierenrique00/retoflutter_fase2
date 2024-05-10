// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      (json['id'] as num).toInt(),
      json['username'] as String,
      json['email'] as String,
      json['password'] as String,
      json['phone'] as String,
      AddressModel.fromJson(json['address'] as Map<String, dynamic>),
      NameModel.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'address': instance.address.toJson(),
      'name': instance.name.toJson(),
    };

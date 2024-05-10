import 'package:json_annotation/json_annotation.dart';

import 'address_model.dart';
import 'name_model.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  final int id;
  final String username;
  final String email;
  final String password;
  final String phone;
  final AddressModel address;
   final NameModel name;

  UserModel(this.id, this.username, this.email, this.password, this.phone, this.address, this.name);

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  @override
  String toString(){
    return 'UserModel('
    'id: $id, '
    'username: $username, '
    'email: $email, '
    'password: $password, '
    'phone: $phone, '
    'address: $address, '
    'name: $name'
    ')';
  }
  
}
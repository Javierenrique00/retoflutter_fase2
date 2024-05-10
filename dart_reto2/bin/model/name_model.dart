import 'package:json_annotation/json_annotation.dart';

part 'name_model.g.dart';

@JsonSerializable()
class NameModel {
  final String firstname;
  final String lastname;


  NameModel(this.firstname, this.lastname );

  factory NameModel.fromJson(Map<String, dynamic> json) => _$NameModelFromJson(json);
  Map<String, dynamic> toJson() => _$NameModelToJson(this);

  @override
  String toString(){
    return 'NameModel('
    'firstname: $firstname, '
    'lastname: $lastname, '
    ')';
  }
  
}
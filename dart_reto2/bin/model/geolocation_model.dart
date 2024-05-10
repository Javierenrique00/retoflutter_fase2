import 'package:json_annotation/json_annotation.dart';

part 'geolocation_model.g.dart';

@JsonSerializable()
class GeolocationModel {
  final String lat;
  final String long;


  GeolocationModel(this.lat, this.long);

  factory GeolocationModel.fromJson(Map<String, dynamic> json) => _$GeolocationModelFromJson(json);
  Map<String, dynamic> toJson() => _$GeolocationModelToJson(this);

  @override
  String toString(){
    return 'GeolocationModel('
    'lat: $lat, '
    'long: $long, '
    ')';
  }
  
}
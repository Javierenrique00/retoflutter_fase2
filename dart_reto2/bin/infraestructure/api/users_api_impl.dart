import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

import '../../model/geolocation_model.dart';
import '../../model/user_model.dart';
import 'users_api.dart';

class UsersApiImpl implements UsersApi{

  static const String urlEndpoint = 'fakestoreapi.com';
  static const String urlUsers = '/users';

  @override
  Future<ResponseGetAllUsers> getAllUsers() async {
    try{
      var url = Uri.https(urlEndpoint, urlUsers, {'q': '{https}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponseList = convert.jsonDecode(response.body) as List<dynamic>;
        final List<UserModel> resultList = [];
        for(final element in jsonResponseList){
            final conv = UserModel.fromJson(element);
            resultList.add(conv);
        }
        return right(resultList);
      } else {
        return left(response.statusCode.toString());
      }
    }catch(error){
      return left(error.toString());
    }
  }

  @override
  Future<ResponseGetUser> getSingleUser(int id) async {
    try{
      var url = Uri.https(urlEndpoint, '$urlUsers/$id', {'q': '{https}'});
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
        final conv = UserModel.fromJson(jsonResponse);
        return right(conv);
      } else {
        return left(response.statusCode.toString());
      }
    }catch(error){
        return left(error.toString());
    }
  }





}
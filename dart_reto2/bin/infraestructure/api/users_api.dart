
import 'package:dartz/dartz.dart';

import '../../model/user_model.dart';

typedef ResponseGetAllUsers = Either<String, List<UserModel>>;
typedef ResponseGetUser = Either<String, UserModel>;

abstract class UsersApi {

  Future<ResponseGetAllUsers> getAllUsers();
  Future<ResponseGetUser> getSingleUser(int id);
  
  
}
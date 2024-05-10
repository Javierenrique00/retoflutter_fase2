
import '../../model/user_model.dart';
import 'baseio_api.dart';
import 'paths.dart';
import 'users_api.dart';

class UsersApiImpl implements UsersApi{

  final usersApi = BaseioApi<UserModel>(urlpath: Paths.urlUsers,serializer: (p0) => UserModel.fromJson(p0),);
  
  @override
  Future<ResponseGetAllUsers> getAllUsers() => usersApi.getAll();
  
  @override
  Future<ResponseGetUser> getSingleUser(int id) => usersApi.getSingle(id);

}
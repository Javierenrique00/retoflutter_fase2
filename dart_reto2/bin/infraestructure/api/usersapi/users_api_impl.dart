
import '../../../model/user/user_model.dart';
import '../common/baseio_api.dart';
import '../common/paths.dart';
import 'users_api.dart';

class UsersApiImpl implements UsersApi{

  final usersApi = BaseioApi<UserModel>(urlpath: Paths.urlUsers,serializer: (p0) => UserModel.fromJson(p0),);
  
  @override
  Future<ResponseGetAllUsers> getAllUsers() => usersApi.getAll();
  
  @override
  Future<ResponseGetUser> getSingleUser(int id) => usersApi.getSingle(id);

}
import 'package:user_list_repository_demo/data/datasources/user_fake_datasource.dart';
import 'package:user_list_repository_demo/models/user.dart';

abstract class UserRepository {  
   Future<List<User>> getUser();
}

class UserRepositoryImpl extends UserRepository {
  final UserFakeDatasource userFakeDatasource;

  UserRepositoryImpl(this.userFakeDatasource);

  @override
  Future<List<User>> getUser(){
    return userFakeDatasource.getUser();
  }
}
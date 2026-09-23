import 'package:user_list_repository_demo/models/user.dart';

class UserFakeDatasource {
  Future<List<User>> getUser() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      User(id: 1, name: 'Vy'),
      User(id: 2, name: 'Thai'),
    ];
  }
}
import 'package:flutter/material.dart';
import 'package:user_list_repository_demo/data/datasources/user_fake_datasource.dart';
import 'package:user_list_repository_demo/data/repositories/user_repository.dart';
import 'package:user_list_repository_demo/screens/user_screen.dart';

void main(){
  final datasource = UserFakeDatasource();
  final userRepository = UserRepositoryImpl(datasource);
  runApp(MyApp(userRepository: userRepository,));
}

class MyApp extends StatelessWidget{
  final UserRepository userRepository;
  MyApp({
    super.key,
    required this.userRepository});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: UserScreen(repository: userRepository));
  }
}
import 'package:flutter/material.dart';

import '../data/repositories/user_repository.dart';
import '../models/user.dart';
class UserScreen extends StatelessWidget {
  final UserRepository repository;

  const UserScreen({super.key, required this.repository});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body: FutureBuilder(
        future: repository.getUser(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final users = snapshot.data as List<User>;

          return ListView(
            children: users.map((u) => ListTile(title: Text(u.name))).toList(),
          );
        },
      ),
    );
  }
}
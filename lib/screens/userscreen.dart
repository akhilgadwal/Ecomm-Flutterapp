import 'package:ecomm/widgets/userscreen.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Users',
          ),
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const Userswidget();
          }),
        ));
  }
}

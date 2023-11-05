// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learn/week2/statefull/model/user.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key, required this.user, this.onPressed});
  final User user ;

  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(user.imageUrl),),
        title: Text(user.title),
        subtitle: Text(user.description),
        trailing: Icon(Icons.arrow_right_alt_rounded),
        onTap: onPressed,
      ),
    );
  }
}
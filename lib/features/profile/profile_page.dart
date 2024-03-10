import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:ofly_tech_test/core/models/user_model.dart';

class ProfilePage extends StatelessWidget {
  final UserModel userModel;
  const ProfilePage({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          child: Text("${userModel.userName}"),
        )
      ],
    );
  }
}

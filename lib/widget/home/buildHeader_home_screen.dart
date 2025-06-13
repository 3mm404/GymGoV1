import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/home/components/user.name.dart';
import 'package:flutter_application_1/widget/home/components/user_avatar.dart';

class BuildHeaderHomeScreen extends StatelessWidget {
  const BuildHeaderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [UserName()],
        ),
        UserAvatar(),
      ],
    );
  }
}

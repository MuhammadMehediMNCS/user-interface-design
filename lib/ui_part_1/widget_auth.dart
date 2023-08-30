import 'package:application_ui/ui_part_1/widget_login.dart';
import 'package:application_ui/ui_part_1/widget_signup.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  bool isToggle = true;
  
  @override
  Widget build(BuildContext context) => isToggle ?
  LoginWidget(onClickedSignup: toggle)
  : SignUpWidget(onClickedLogin: toggle);

  void toggle() => setState(() {
    isToggle = !isToggle;
  });
}
import 'package:application_ui/style/all_style.dart';
import 'package:application_ui/ui_part_1/widget_auth.dart';
import 'package:application_ui/ui_part_1/widget_login.dart';
import 'package:application_ui/ui_part_1/widget_signup.dart';
import 'package:flutter/material.dart';

import '../const/all_colors.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserPage1(),
    );
  }
}

class UserPage1 extends StatefulWidget {
  const UserPage1({super.key});

  @override
  State<UserPage1> createState() => _UserPage1State();
}

class _UserPage1State extends State<UserPage1> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 30.0, 12.0, 12.0),
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: AllStyle.headingText
              ),
              const SizedBox(height: 12.0,),
              const Text(
                'Slash Flutter provider extraordinary flutter\ntutorials. Do subscribe!',
                style: AllColors.greyColor,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 35.0),
              Image.asset('images/picture_1.png'),
              const SizedBox(height: 35.0),
              buildButton(),
              const SizedBox(height: 12.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(220, 48),
                  shape: const StadiumBorder()
                ),
                child: const Text('Sign up'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpWidget()));
                }
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    return GestureDetector(
      child: Container(
        height: 40.0,
        width: 212.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all()
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.bold),
          )
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const AuthWidget()));
      },
    );
  }
}
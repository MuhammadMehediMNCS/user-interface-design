import 'package:application_ui/const/all_colors.dart';
import 'package:application_ui/style/all_style.dart';
import 'package:application_ui/widgest/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  final Function()? onClickedLogin;

  const SignUpWidget({super.key, this.onClickedLogin});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: SingleChildScrollView(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Container(
          child: Column(
            children: [
              const Text(
                'Sign Up',
                style: AllStyle.headingText,
              ),
              const SizedBox(height: 15.0,),
              const Text(
                "Create an account. It's free",
                style: AllColors.greyColor,
              ),
              const SizedBox(height: 40.0),
              const TextFieldWidget(lebel: 'Username'),
              const SizedBox(height: 12.0),
              const TextFieldWidget(lebel: 'Email'),
              const SizedBox(height: 12.0),
              const TextFieldWidget(lebel: 'Password'),
              const SizedBox(height: 12.0),
              const TextFieldWidget(lebel: 'Confirm Password'),
              const SizedBox(height: 50.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(230, 50),
                    shape: const StadiumBorder()
                  ),
                  child: const Text('Sign up'),
                  onPressed: () {}
                ),
                const SizedBox(height: 40.0),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    text: "Don't have an account? ",
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = widget.onClickedLogin,
                        text: 'Login',
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        )
                      )
                    ]
                  )
                ),
            ],
          ),
        ),
      ),
    ),
  );
}
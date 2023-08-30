import 'package:application_ui/const/all_colors.dart';
import 'package:application_ui/style/all_style.dart';
import 'package:application_ui/widgest/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignup;

  const LoginWidget({super.key, required this.onClickedSignup});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                const Text(
                  'Login',
                  style: AllStyle.headingText,
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Login to your account',
                  style: AllColors.greyColor,
                ),
                const SizedBox(height: 30.0),
                const TextFieldWidget(lebel: 'Email'),
                const SizedBox(height: 12.0),
                const TextFieldWidget(lebel: 'Password'),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(230, 50),
                    shape: const StadiumBorder()
                  ),
                  child: const Text('Login'),
                  onPressed: () {}
                ),
                const SizedBox(height: 30.0),
                RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    text: "Don't have an account? ",
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap = widget.onClickedSignup,
                        text: 'Sign up',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        )
                      )
                    ]
                  )
                ),
                const SizedBox(height: 40.0),
                Image.asset('images/picture_2.jpg')
              ],
            ),
          ),
        ),
      ),
    );
  }


}
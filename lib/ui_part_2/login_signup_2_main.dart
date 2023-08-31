import 'package:application_ui/style/all_style.dart';
import 'package:application_ui/widgest/text_field_widget2.dart';
import 'package:application_ui/widgest/text_field_widget3.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import 'my_clipper.dart';

class LoginSignup2 extends StatelessWidget {
  const LoginSignup2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserPage2(),
    );
  }
}

class UserPage2 extends StatefulWidget {
  const UserPage2({super.key});

  @override
  State<UserPage2> createState() => _UserPage2State();
}

class _UserPage2State extends State<UserPage2> {
  String currentValue = 'Remember me';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Stack(
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'images/picture_4.jpeg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    const Positioned(
                      right: 8,
                      child: Text(
                        'Order and \nGet to door step',
                        style: AllStyle.positionText,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              Card(
                elevation: 12,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Login',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 18.0),
                      TextFieldWidget2(lebel: 'Username'),
                      SizedBox(height: 12.0),
                      TextFieldWidget3(lebel: 'Password')
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Radio(
                    value: 'Remember me',
                    groupValue: currentValue,
                    onChanged: (value) {
                      // setState(() => currentValue = value.toString());
                    }
                  ),
                  const Text('Remember me', style: TextStyle(fontSize: 12.0),),
                  const SizedBox(width: 75.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      minimumSize: const Size(120, 50)
                    ),
                    child: const Text('SIGNIN'),
                    onPressed: () {}
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60.0,
                    child: const Divider(),
                  ),
                  const SizedBox(width: 20.0),
                  const Text('Social Login', style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(width: 20.0),
                  Container(
                    width: 60.0,
                    child: const Divider(),
                  )
                ],
              ),
              const SizedBox(height: 25.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      color: Colors.indigo,
                      child: IconButton(
                        icon: const Icon(Icons.facebook_sharp, size: 28, color: Colors.white,),
                        onPressed: () {}
                      ),
                    ),
                  ),
                  const SizedBox(width: 25.0),
                  ClipOval(
                    child: Container(
                      color: Colors.red,
                      child: IconButton(
                        icon: const Icon(FontAwesomeIcons.google, size: 20, color: Colors.white,),
                        onPressed: () {}
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
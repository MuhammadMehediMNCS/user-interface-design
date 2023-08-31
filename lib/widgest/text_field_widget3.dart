import 'package:flutter/material.dart';

import '../style/all_style.dart';

class TextFieldWidget3 extends StatefulWidget {
  final String lebel;

  const TextFieldWidget3({super.key, required this.lebel});

  @override
  State<TextFieldWidget3> createState() => _TextFieldWidget3State();
}

class _TextFieldWidget3State extends State<TextFieldWidget3> {
  TextEditingController controller = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        widget.lebel,
        style: AllStyle.fieldLebel,
      ),
      const SizedBox(height: 8.0),
      TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: '********',
          suffixIcon: obscureText == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = false;
                  });
                },
                icon: const Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                )
              )
              : IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = true;
                    });
                  },
                  icon: const Icon(
                    Icons.remove_red_eye,
                    color: Colors.grey,
                  )
                )
              ),
        ),
    ],
  );
}
import 'package:flutter/material.dart';

import '../style/all_style.dart';

class TextFieldWidget2 extends StatefulWidget {
  final String lebel;

  const TextFieldWidget2({super.key, required this.lebel});

  @override
  State<TextFieldWidget2> createState() => _TextFieldWidget2State();
}

class _TextFieldWidget2State extends State<TextFieldWidget2> {
  TextEditingController controller = TextEditingController();

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
        decoration: const InputDecoration(
          hintText: 'en. chromicle'
        ),
      ),
    ],
  );
}
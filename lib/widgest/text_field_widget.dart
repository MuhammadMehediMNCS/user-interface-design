import 'package:application_ui/style/all_style.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String lebel;

  const TextFieldWidget({
    super.key,
    required this.lebel,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
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
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0)
          ),
        ),
      )
    ],
  );
}
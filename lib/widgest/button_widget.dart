import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Icon icon;
  final String text;

  const ButtonWidget({
    super.key,
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(12.0)
        ),
        child: Center(child: icon),
      ),
      const SizedBox(height: 6.0),
      Container(
        height: 30,
        width: 50,
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        )
      )
    ],
  );
}
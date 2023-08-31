import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double w = size.width;
    double h = size.height;
    var firstControllerPoint = Offset(size.width / 4, h);
    var firstPoint = Offset(size.width / 2, h);
    var secondControllerPoint = Offset(w - w / 4, h);
    var secondPoint = Offset(w, h - 30);

    final path = Path();

    path.lineTo(0, h - 30);
    path.quadraticBezierTo(firstControllerPoint.dx, firstControllerPoint.dy, firstPoint.dx, firstPoint.dy);
    path.quadraticBezierTo(secondControllerPoint.dx, secondControllerPoint.dy, secondPoint.dx, secondPoint.dy);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }

}
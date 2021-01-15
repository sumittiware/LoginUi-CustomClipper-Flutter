import 'package:flutter/cupertino.dart';

class RightClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(size.width * 0.5, 0);
    var point1 = Offset(size.width * 0.5, size.height * 0.8);
    var point2 = Offset(size.width, size.height);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class LeftLargeClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height * 0.7);
    var point1 = Offset(size.width * 0.6, size.height);
    var point2 = Offset(size.width * 0.6, size.height * 0.4);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
    var point3 = Offset(size.width * 0.6, size.height * 0.2);
    var point4 = Offset(size.width * 0.75, size.height * 0.2);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
    var point5 = Offset(size.width * 0.9, size.height * 0.2);
    var point6 = Offset(size.width, size.height * 0.15);
    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class LastTopClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height * 0.8);
    var point1 = Offset(size.width * 0.4, size.height * 0.7);
    var point2 = Offset(size.width * 0.3, size.height);
    path.quadraticBezierTo(point2.dx, point2.dy, point1.dx, point1.dy);
    var point3 = Offset(size.width * 0.6, size.height * 0.1);
    var point4 = Offset(size.width * 0.8, size.height * 0.15);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
    var point5 = Offset(size.width * 0.9, size.height * 0.2);
    var point6 = Offset(size.width, 0);
    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

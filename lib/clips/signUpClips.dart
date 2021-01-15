import 'package:flutter/cupertino.dart';

class HalfClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    var point1 = Offset(size.width * 0.25, size.height * 0.7);
    var point2 = Offset(size.width * 0.5, size.height * 0.7);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
    var point3 = Offset(size.width * 0.75, size.height * 0.7);
    var point4 = Offset(size.width, size.height * 0.5);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class LargeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width * 0.5, size.height);
    var point1 = Offset(size.width * 0.6, size.height * 0.85);
    var point2 = Offset(size.width * 0.75, size.height * 0.8);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
    var point3 = Offset(size.width * 0.9, size.height * 0.75);
    var point4 = Offset(size.width, size.height * 0.6);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class SmallClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height);
    var point1 = Offset(size.width * 0.25, size.height * 0.7);
    var point2 = Offset(size.width * 0.5, size.height * 0.7);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
    var point3 = Offset(size.width * 0.75, size.height * 0.7);
    var point4 = Offset(size.width, 0);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

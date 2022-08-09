import 'package:flutter/material.dart';

class ContainerTemp extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const ContainerTemp(
      {required this.height, required this.width, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color.withOpacity(.5),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

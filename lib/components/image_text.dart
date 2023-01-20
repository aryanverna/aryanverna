import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({
    Key? key,
    required this.height,
    required this.image,
    this.color,
    required this.text,
    this.textColor,
  }) : super(key: key);

  final double height;
  final String image;
  final String text;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.49,
      width: double.infinity,
      color: color,
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Image.asset(
            image,
            height: height * 0.2,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}

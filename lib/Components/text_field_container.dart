import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final String hintText;
  final dynamic textInputType;
  final double width;
  final double height;
  const TextFieldContainer({
    Key key,
    this.hintText,
    @required this.textInputType,
    @required this.width,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2.0),
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * width,
      height: size.width * height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        border: Border.all(),
        color: Colors.white,
      ),
      child: TextField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

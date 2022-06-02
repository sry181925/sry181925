import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;
  // ignore: prefer_const_constructors_in_immutables
  MyButtonWidget({Key? key, required this.text, required this.color, required this.onPress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none,
        ),
        onPressed: onPress(),
        child: Text(
          text,
          // ignore: prefer_const_constructors
          style: TextStyle(fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

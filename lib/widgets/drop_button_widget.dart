import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/stylies/detail_screen_stylies.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DropButton extends StatefulWidget {
  final String hintText;
  String ratingController;
  final List<String> item;
  DropButton({Key? key, required this.hintText, required this.ratingController, required this.item}) : super(key: key);
  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      margin: EdgeInsets.all(10.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
            fillColor: AppColors.baseWhiteColor,
            filled: true,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0))),
        hint: Text(
          // ignore: unnecessary_string_interpolations
          "${widget.hintText}",
          style: DetailScreenStylies.productDropDownValueStyle,
        ),
        value: widget.ratingController,
        items: widget.item
            .map((e) => DropdownMenuItem(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        onChanged: (value) {
          setState(() {
            widget.ratingController = value!;
          });
        },
      ),
    );
  }
}

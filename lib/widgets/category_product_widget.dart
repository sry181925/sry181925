import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/stylies/category_screen_stylies.dart';
import 'package:flutter/material.dart';

class CategoryProductWidget extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productModel;
  final VoidCallback onPressed;
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  CategoryProductWidget({ 
    required this.productImage,
    required this.productName,
    required this.productModel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // ignore: prefer_const_constructors
        margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
        height: 80,
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage(
                    productImage,
                  ),
                )),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: CategoryScreenStylies.categoryProductNameStyle,
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    productModel,
                    style: CategoryScreenStylies.categoryProductModelStyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.baseBlackColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//import 'package:cheap_charly/screens/category/sub_category.dart';
import 'package:e_jkmm/data/home-page-data/home-page-data.dart';
import 'package:e_jkmm/models/SingleProductModel.dart';
//import 'package:e_jkmm/models/categoryProductModel.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/screens/detailscreen/detail_screen.dart';
import 'package:e_jkmm/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class TabBarBar extends StatelessWidget {
  final List<SingleProductModel>productData;
  //final List<CategoryProductModel> categoryProductData;
 // ignore: prefer_const_constructors_in_immutables
 TabBarBar({Key? key,  required this.productData,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // ignore: prefer_const_constructors
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: colothsData.length,
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = productData[index];
        return SingleProductWidget(
          onPressed: () {
           PageRouting.goToNextPage(
              context: context,
              navigateTo: DetailScreen(data: data),
            );
          },
          productImage: data.productImage,
          productModel: data.productModel,
          productName: data.productName,
          productOldPrice: data.productOldPrice,
          productPrice: data.productPrice,
        );
      },
    );
  }
}

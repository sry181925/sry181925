

//import 'package:e_jkm/models/categoryProductModel.dart';
//import 'package:e_jkm/routes/routes.dart';
//import 'package:cheap_charly/screens/category/sub_category.dart';
//import 'package:cheap_charly/screens/detailscreen/detail_screen.dart';
//import 'package:cheap_charly/widgets/singleProduct_widget.dart';
import 'package:e_jkmm/data/home-page-data/home-page-data.dart';
import 'package:e_jkmm/models/SingleProductModel.dart';
import 'package:e_jkmm/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class TabBarBar extends StatelessWidget {
  //final List<SingleProductModel> productData;
 // final List<CategoryProductModel> categoryProductData;
 //TabBarBar({required this.productData, /*this.categoryProductData8*/});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      primary: true,
      itemCount: colothsData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        var data = colothsData[index];
        return SingleProductWidget(
          onPressed: () {
           /* PageRouting.goToNextPage(
              context: context,
              navigateTo: DetailScreen(data: data),
            );*/
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

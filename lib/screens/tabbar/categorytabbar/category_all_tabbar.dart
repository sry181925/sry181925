import 'package:e_jkmm/data/home-page-data/home-page-data.dart';
import 'package:e_jkmm/models/SingleProductModel.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/screens/detailscreen/detail_screen.dart';
import 'package:e_jkmm/widgets/show_all_widget.dart';
import 'package:e_jkmm/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CategoryAllTabBar extends StatelessWidget {
  Widget builderRender({required List<SingleProductModel> singleProduct}) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 250,
      child: GridView.builder(
        itemCount: singleProduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4,
        ),
        itemBuilder: (context, index) {
          var data = singleProduct[index];
          return SingleProductWidget(
            onPressed: () {
              PageRouting.goToNextPage(
                  navigateTo: DetailScreen(data: data), context: context);
            },
            productImage: data.productImage,
            productModel: data.productModel,
            productName: data.productName,
            productOldPrice: data.productOldPrice,
            productPrice: data.productPrice,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      // ignore: prefer_const_constructors
      physics: BouncingScrollPhysics(),
      children: [
        ShowAllWidget(
          leftText: "Clothing",
        ),
        builderRender(singleProduct: colothsData),
        ShowAllWidget(
          leftText: "Shoes",
        ),
        builderRender(
          singleProduct: shoesData,
        ),
        ShowAllWidget(
          leftText: "Accessories",
        ),
        builderRender(
          singleProduct: accessoriesData,
        ),
      ],
    );
  }
}

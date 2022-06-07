// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/data/category-data/category.data.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/screens/filtter/filterScreen.dart';
import 'package:e_jkmm/screens/tabbar/categorytabbar/category_all_tabbar.dart';
import 'package:e_jkmm/screens/tabbar/categorytabbar/category_men_tabbar.dart';
import 'package:e_jkmm/stylies/category_screen_stylies.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: use_key_in_widget_constructors
class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black12,
      elevation: 0,
      centerTitle: true,
     
      title: Text(
        "E-JKM",
        style: CategoryScreenStylies.categoryAppBarTitleStyle,
      ),
      actions: [
        RotationTransition(
    
          turns: AlwaysStoppedAnimation(90 / 360),
          child: IconButton(
            onPressed: () {
               PageRouting.goToNextPage(
              context: context,
              navigateTo: FilterScreen(),
               );
            },
            icon: SvgPicture.asset(
              SvgImages.filter,
              color: AppColors.baseBlackColor,
              width: 30,
            ),
          ),
        ),
        IconButton(
          icon: SvgPicture.asset(
            SvgImages.search,
            color: AppColors.baseBlackColor,
            width: 30,
          ),
          onPressed: () {},
        )
      ],
     
      bottom: TabBar(
        indicator: BoxDecoration(color: Colors.transparent),
        labelStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        automaticIndicatorColorAdjustment: false,
        // ignore: prefer_const_literals_to_create_immutables
        tabs: [
          Text("All"),
          Text("Men"),
          Text("Woman"),
          Text("Kids"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.baseWhiteColor,
        appBar: buildAppBar(),
        body: TabBarView(
         
          children: [
            //All Place
         CategoryAllTabBar(),
            //Men  Place
      
         CategoryMenTabBar(
            categoryProductModel: menCategoryData,
            ),
          //woman Place
            CategoryMenTabBar(
              categoryProductModel: womenCategoryData,
            ),
            //Kids place
            CategoryMenTabBar(
              categoryProductModel: forKids,
            ),
          ],
        ),
      ),
    );
  }
}

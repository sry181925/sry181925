// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, deprecated_member_use

import 'package:e_jkmm/appColors/app_colors.dart';
//import 'package:e_jkmm/screens/detailscreen/detail_screen.dart';
//import 'package:e_jkmm/data/detail-screem-data/detail-screen-data.dart';
import 'package:e_jkmm/screens/homepage/home_page.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/screens/payment/payment_screen.dart';
import 'package:e_jkmm/stylies/detail_screen_stylies.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
//import 'package:e_jkmm/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class YourBagScreen extends StatefulWidget {
  @override
  _YourBagScreenState createState() => _YourBagScreenState();
}

class _YourBagScreenState extends State<YourBagScreen> {
   var cartData;
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black12,
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {  PageRouting.goToNextPage(
                       context: context,
                       navigateTo: HomePage());
                       },
          icon: SvgPicture.asset(
            SvgImages.heart,
            color: AppColors.baseBlackColor,
            width: 40,
          ),
        ),
        IconButton(
          onPressed: () {
            PageRouting.goToNextPage(
                       context: context,
                       navigateTo: HomePage(),
                   ); },
          icon: SvgPicture.asset(
            SvgImages.delete,
            color: AppColors.baseBlackColor,
            width: 40,
          ),
        )
      ],
    );
  }

  Widget buildSignleBag() {
    var quantityController;
    var sizeController;
    var colorsController;
    return Card(
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 200,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.pinimg.com/originals/9b/c0/9c/9bc09c5d78671e8c34c7549fd84d4dd4.jpg',
                            ),
                            // ""),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'stripes shirt',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.baseBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "addidas originals",
                            style: TextStyle(
                              color: AppColors.baseDarkPinkColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Text(
                                "\$40",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.baseBlackColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "\$80",
                                style: TextStyle(
                                  fontSize: 16,
                                  decoration: TextDecoration.lineThrough,
                                  color: AppColors.baseGrey50Color,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.baseGrey30Color,
                        child: Icon(
                          Icons.check,
                          color: AppColors.baseWhiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        fillColor: AppColors.baseWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      hint: Text(
                        "Size",
                        style: DetailScreenStylies.productDropDownValueStyle,
                      ),
                      value: sizeController,
                      items: ["M", "L", "S", "ML"]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: ( value) async {
                        assert(value != null);
                        setState(() {
                          sizeController = value;
                        });
                    },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        fillColor: AppColors.baseWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      hint: Text(
                        "Colors",
                        style: DetailScreenStylies.productDropDownValueStyle,
                      ),
                      value: colorsController,
                      items: ["Red", "Green", "Blue", "Pink"]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                        colorsController = value;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        fillColor: AppColors.baseWhiteColor,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      hint: Text(
                        "Quantity",
                        style: DetailScreenStylies.productDropDownValueStyle,
                      ),
                      value: quantityController,
                      items: ["1", "2", "3", "4", "5"]
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            ),
                          )
                          .toList(),
                      onChanged: (value)=> setState(() {
                          quantityController = value;
                        }),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  double orderAmout=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           
                Text(
                  "Your Bag",
           
                  style: TextStyle(
                    fontSize: 22,
                    color: AppColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            
                SizedBox(
                  height: 3,
                ),
   
                Text(
                  "You have 5 items in your bag",
                  style: TextStyle(
                    color: AppColors.baseGrey60Color,
                  ),
                ),
               buildSignleBag(),
               buildSignleBag(),
               buildSignleBag(),
               buildSignleBag(),
               buildSignleBag(),
                Padding(
                 
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.only(
                            right: 20,
                          ),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: AppColors.basewhite60Color,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "213154",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.baseBlackColor,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          elevation: 0,
                          height: 40,
                          color: AppColors.baseLightOrangeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7),
                            side: BorderSide.none,
                          ),
                          child: Text(
                            "Employ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.baseWhiteColor,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ),
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "Order amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.baseBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Your total amount of discount",
                        style: TextStyle(
                          color: AppColors.baseBlackColor,
                        ),
                      )
                    ],
                  ),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "\$193",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.baseBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$-55.98",
                        style: TextStyle(
                          color: AppColors.baseBlackColor,
                        ),
                      ),
                    ],
                  ),
                ),

                  // ignore: sized_box_for_whitespace
                  Container(
                    margin: EdgeInsets.all(20),
            height: 50,
            width: double.infinity,
            child: ElevatedButton(onPressed:(){ 
                    PageRouting.goToNextPage(
                    context: context,
                    navigateTo: PaymentScreen(),
                    );},
            child: Text("Checkout", style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
              primary: AppColors.baseDarkPinkColor,
              fixedSize: const Size(300, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
          ),
              ],
            ),
          ),   
        ],
        
      ),
    );
  }
}

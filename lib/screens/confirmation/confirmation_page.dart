

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/screens/confirmationsuccesspage/confirmation_succes_page.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ConfirmationPage extends StatelessWidget {
  AppBar buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
    );
  }

 Widget buildConfirmationProduct() {
    return  Card(
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
                              ]
                          ),
                        ],
                        ),
                        ),
                        ),

                        ],
                        ),
            )
          ]
        )
      )
                        );
    
  }


  Widget buildBottomPart(BuildContext context) {
    return Column(
      children: [
        ListTile(
          tileColor: AppColors.baseGrey10Color,
          title: Padding(
          
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
            
                Text(
                  "Order amount",
                
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.baseBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
             
                SizedBox(
                  height: 5,
                ),
            
                Text(
                  "Your total amount of discount",
                
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.baseBlackColor,
                  ),
                ),
              ],
            ),
          ),
          trailing: Padding(
     
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
        
              children: [
              
                Text(
                  "\$103.98",
                
                  style: TextStyle(
                    fontSize: 14,
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
                    fontSize: 12,
                    color: AppColors.baseBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      backgroundColor: AppColors.baseGrey10Color,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Confirmation",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.baseBlackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text("order number #123123213"),
                ),
                buildConfirmationProduct(),
                buildConfirmationProduct(),
                buildConfirmationProduct(),

                buildBottomPart(context),
                  Container(
                height: 50,
                color: AppColors.baseGrey10Color,
                width: double.infinity, 
                margin: EdgeInsets.symmetric(horizontal: 23),
                child: ElevatedButton(onPressed:(){ 
                   PageRouting.goToNextPage(
                   context: context,
                   navigateTo: ConfirmationSuccessPage(),
                   );
                   },
            child: Text("Place Order", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
              primary:  AppColors.baseDarkPinkColor,
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

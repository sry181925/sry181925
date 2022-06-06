// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
import 'package:e_jkmm/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.70,
      centerTitle: true,
      backgroundColor: Colors.white30,
   
      title: Text(
        "My Account",
     
        style: TextStyle(
          color: AppColors.baseBlackColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            SvgImages.edit,
            color: AppColors.baseBlackColor,
            width: 25,
          ),
        )
      ],
      shadowColor: AppColors.baseGrey10Color,
    );
  }

  Widget buildlistTileWidget({required String leading, required String trailing}) {
    return ListTile(
      tileColor: AppColors.baseWhiteColor,
      leading: Text(
        leading,
      
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Text(
        trailing,
      
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  Widget buildBottomListTile({required String leading, required String trailing}) {
    return ListTile(
      onTap: () {},
      tileColor: AppColors.baseWhiteColor,
      leading: Text(
        leading,
      
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Wrap(
        spacing: 5,
        children: [
          Text(
            trailing,
            textAlign: TextAlign.center,
           
            style: TextStyle(
              fontSize: 20,
            ),
          ),
    
          Icon(
            Icons.arrow_forward_ios_outlined,
            size: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.baseGrey10Color,
      appBar: buildAppBar(),
      body: ListView(
     
        physics: BouncingScrollPhysics(),
        children: [
          Container(
            height: 200,
       
            margin: EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Padding(
              
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
               
                  Center(
                  
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.transparent,
                  
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/originals/7b/48/65/7b48654b92587f3df86c21d7071bad42.jpg"),
                    ),
                  ),
             
                  Text(
                    " Saurabh Yadav",
                    
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                
                  Text(
                    "Noida",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Container(
           
            margin: EdgeInsets.only(bottom: 20),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildlistTileWidget(
                    leading: "Full name", trailing: "Saurabh yadav"),
              
                Divider(),
                buildlistTileWidget(
                  leading: "Email",
                  trailing: "saurabh@jkm",
                ),
              
                Divider(),
                buildlistTileWidget(
                  leading: "Address",
                  trailing: "1234567",
                ),
           
                Divider(),
                buildlistTileWidget(
                  leading: "Payment",
                  trailing: "6011\t****\t****\t1117",
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildBottomListTile(
                  leading: "Wish-list",
                  trailing: "5",
                ),
                // ignore: prefer_const_constructors
                Divider(),
                buildBottomListTile(
                  leading: "My bag",
                  trailing: "3",
                ),
                // ignore: prefer_const_constructors
                Divider(),
                buildBottomListTile(
                  leading: "My orders",
                  trailing: "1 in transit",
                ),
              ],
            ),
          ),
          Container(
            // ignore: prefer_const_constructors
            margin: EdgeInsets.all(20.0),
            child: MyButtonWidget(
              color: AppColors.baseDarkPinkColor,
              onPress: () {},
              text: "Log out",
            ),
          ),
        ],
      ),
    );
  }
}

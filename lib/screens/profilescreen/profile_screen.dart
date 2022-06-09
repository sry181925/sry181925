// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
//import 'package:e_jkmm/widgets/my_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: use_key_in_widget_constructors
class ProfileScreen extends StatelessWidget {
  AppBar buildAppBar() {
    return AppBar(
      elevation: 0.70,
      centerTitle: true,
      backgroundColor: Colors.black12,
   
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

// Con for all Profile and Product details         

          Container(
            height: 170.0,     
            margin: EdgeInsets.only(bottom: 10),
            color: AppColors.baseGrey20Color,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               

// User profile image 
  // ignore: prefer_const_literals_to_create_immutables
  children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-afEHBOE4PokKMQyuaj1Rp4Gl7_zGKXjmg&usqp=CAU"),
                    ),
                  ),

//User Name ,Address detail is here
                  Text(
                    "Saurabh Yadav",    
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),              
                  Text(
                    "Noida, Uttar Pradesh",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  )
              
                ],
              ),
            ),
          ),

// Con for User detail and user  order, bag and wishlist details  here

          Container(
            margin: EdgeInsets.only(bottom: 20),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildlistTileWidget(leading: "Full name", trailing: "Saurabh yadav"),
                Divider(),
                buildlistTileWidget(leading: "Email",trailing: "saurabh@jkm"),
                Divider(),
                buildlistTileWidget(leading: "Address",trailing: "1234567"),
                Divider(),
                buildlistTileWidget(leading: "Payment",trailing: "60**03"
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(bottom: 10),
            color: AppColors.baseWhiteColor,
            child: Column(
              children: [
                buildBottomListTile(leading: "Wish-list",trailing: "5"),
                Divider(),
                buildBottomListTile(leading: "My bag",trailing: "3"),
                Divider(),
                buildBottomListTile(leading: "My orders",trailing: "1 in transit"),
              ],
            ),

//Logout button use here

          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(20.0),
            child: ElevatedButton(onPressed:(){},
            child: Text("Logout", style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),),
            style: ElevatedButton.styleFrom(
              primary: AppColors.baseDarkPinkColor,
              fixedSize: const Size(300, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}

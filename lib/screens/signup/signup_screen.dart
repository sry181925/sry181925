// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/stylies/signup_screen_stylies.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
import 'package:e_jkmm/widgets/my_button_widget.dart';
import 'package:e_jkmm/widgets/textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



// ignore: use_key_in_widget_constructors
class SignupScreen extends StatelessWidget {
  
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/logo.png",
          height: 150,
          width: 300,
        ),
        MyTextFromField(
          hintText: "Full name",
          obscureText: false,
        ),
        MyTextFromField(
          hintText: "Email",
          obscureText: false,
        ),
        MyTextFromField(
          hintText: "Password",
          obscureText: true,
        ),
        MyTextFromField(
          hintText: "Confirm Password",
          obscureText: true,
        ),
        Container(
          
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButtonWidget(
            onPress: () {},
            color: AppColors.baseDarkPinkColor,
            text: "Create an account",
          ),
        ),
       
        SizedBox(
          height: 20,
        ),
        RichText(
        
          text: TextSpan(
            text: "By sigining up you agress to our\n\t",
            style: SignupScreenStylies.signInAgressStyle,
            // ignore: prefer_const_literals_to_create_immutables
            children: <TextSpan>[
         
              TextSpan(
                text: "Terms\t",
                style: SignupScreenStylies.termsTextStyle,
              ),
            
              TextSpan(
                text: "and\t",
                style: SignupScreenStylies.andTextStyle,
              ),
            
              TextSpan(
                text: "Conditions of Use",
                style: SignupScreenStylies.conditionsOfUseStyle,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildSocialButton({required Widget child, required Function onPressed}) {
    return MaterialButton(
      onPressed: onPressed(),
      shape: OutlineInputBorder(
     
        borderSide: BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: child,
    );
  }

  Widget buildBottomPart() {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
 
          Text(
            "or sign in with social networks",
            style: SignupScreenStylies.signInSocialStyle,
          ),
         
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //facebook social button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                //Google social button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                //Twitter social button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.twitter,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: () {},
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              child: Center(
                child: Text(
                  "Sign up",
                  style: SignupScreenStylies.signUpButtonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(),
            buildBottomPart(),
          ],
        ),
      ),
    );
  }
}

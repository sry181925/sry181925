// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/screens/homepage/home_page.dart';
import 'package:e_jkmm/screens/signup/signup_screen.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
import 'package:e_jkmm/widgets/my_button_widget.dart';
import 'package:e_jkmm/widgets/textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_jkmm/routes/routes.dart';
import '../../stylies/login_screen_stylies.dart';
// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  Widget buildTopPart() {
    return Column(
      children: [
        Image.asset(
          "images/logo.png",
          height: 150,
        ),
        Column(
          children: [
            MyTextFromField(
              hintText: "E-mail",
              obscureText: false,
            ),
            MyTextFromField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyButtonWidget(
                  text: "Sign in",
                  color: AppColors.baseBlackColor,
                  onPress: () {
                   PageRouting.goToNextPage(
                      context: context,
                      navigateTo: HomePage(),
                    );
                  },
                ),
              ),
           
          
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: MyButtonWidget(
                  text: "Sign up",
                  color: AppColors.baseDarkPinkColor,
                  onPress: () {
                    PageRouting.goToNextPage(
                      context: context,
                      navigateTo: SignupScreen(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
   
        SizedBox(
          height: 20,
        ),
      
        Text(
          "Forgot password?",
          style: LoginScreenStylies.forgotPasswordStylies,
        ),
      ],
    );
  }

  Widget buildSocialButton({required Widget child, required Function onPressed}) {
    return MaterialButton(
      shape: OutlineInputBorder(
     
        borderSide: BorderSide(
          width: 0.5,
          color: AppColors.baseGrey40Color,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      onPressed: onPressed(),
      child: child,
    );
  }

  Widget buildBottomPart({required BuildContext context}) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign in with social networks",
            style: LoginScreenStylies.signinSocialStylies,
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // facebook social button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.facebook,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),

                // google social button
                buildSocialButton(
                  onPressed: () {},
                  child: SvgPicture.asset(
                    SvgImages.google,
                    color: AppColors.baseBlackColor,
                    width: 45,
                  ),
                ),
                // twitter social button
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
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              color: AppColors.baseGrey10Color,
              height: 55,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  "Sign up",
                  style: LoginScreenStylies.signupButtonTextStylies,
                ),
              ),
              onPressed: () {
                PageRouting.goToNextPage(
                  context: context,
                  navigateTo: SignupScreen(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(),
                  buildBottomPart(context: context),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


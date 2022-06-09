// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/mybottombar/my_bottom_bar.dart';
import 'package:e_jkmm/screens/signup/signup_screen.dart';
import 'package:e_jkmm/widgets/textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
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
          width: 300,
      ),

      SizedBox(width: 20,),

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
          padding: EdgeInsets.only(top: 30),
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(onPressed:(){ 
                    PageRouting.goToNextPage(
                    context: context,
                    navigateTo: MyBottomBar(),
                    );},
            child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
              primary: AppColors.baseBlackColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
            ),

              SizedBox(width: 20,),

              Expanded(
                  child: ElevatedButton(onPressed:(){ 
                    PageRouting.goToNextPage(
                    context: context,
                    navigateTo: SignupScreen(),
                    );},
            child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
              primary:   AppColors.baseDarkPinkColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
                
              ),
            ],
          ),
        ),
   
        SizedBox(
          height: 20,
        ),

//Forget Text button        

         Container(
         padding: EdgeInsets.only(left: 10),
            child: MaterialButton(
              height: 55,
              elevation: 0,
              shape: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child:   Text(
          "Forgot password?",
          style: LoginScreenStylies.forgotPasswordStylies,
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
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
// google social button            

                SignInButton(
                 Buttons.Google,
                  onPressed: () {},
                                   ),

// facebook social button
              SignInButton(
                 Buttons.Facebook,
                  onPressed: () {},
                                   ),
              ],
            ),
          ),
   SizedBox(
            height: 20,),

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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black12,
      ),
      body: SafeArea(
        child:  ListView(
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
    );
  }
}


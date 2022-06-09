// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/stylies/signup_screen_stylies.dart';
import 'package:e_jkmm/widgets/textfromfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';



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
          child:ElevatedButton(onPressed:(){},
            child: Text( "Create an account", style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
              primary:  AppColors.baseDarkPinkColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
            ),
        ),
       
        SizedBox(
          height: 30,
        ),
        
        RichText(
          text: TextSpan(
            text: "By sigining up you agress to our\n",
            style: SignupScreenStylies.signInAgressStyle,
            // ignore: prefer_const_literals_to_create_immutables
            children: <TextSpan>[
         
              TextSpan(
                text: "Terms ",
                style: SignupScreenStylies.termsTextStyle,
              ),
            
              TextSpan(
                text: "and ",
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
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

//Google social button

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
          Container(
            margin: EdgeInsets.all(20.0),
            child: MaterialButton(
              onPressed: () {
               
              },
              color: AppColors.baseGrey10Color,
              height: 50,
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
        backgroundColor: Colors.black12,
        
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

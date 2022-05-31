import 'package:e_jkmm/appColors/app_colors.dart';
import 'package:e_jkmm/mybottombar/my_bottom_bar.dart';
//import 'package:e_jkmm/screens/homepage/home_page.dart';
//import 'package:e_jkmm/screens/loginscreens/login.dart';
//import 'package:e_jkmm/screens/signupscreen/signup_screen.dart';
import 'package:flutter/material.dart';

//import 'screens/loginscreens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'E-JKM',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(
            color: AppColors.baseBlackColor,
          )
        ),
        ),
        home: MyBottomBar()
        );
  }
}

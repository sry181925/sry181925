// ignore_for_file: prefer_const_constructors
//import 'package:e_jkmm/appColors/app_colors.dart';
//import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/mybottombar/my_bottom_bar.dart';
//import 'package:e_jkmm/screens/loginscreens/login.dart';


//import 'package:e_jkmm/screens/homepage/home_page.dart';
//import 'package:e_jkmm/screens/loginscreens/login.dart';
//import 'package:e_jkmm/screens/signupscreen/signup_screen.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:splashscreen/splashscreen.dart';

//import 'screens/loginscreens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

@override
  // This widget is the root of your application.
   Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      //home: SplashScreenPage(),  
      home: MyBottomBar(),  
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
//ignore: use_key_in_widget_constructors
// class SplashScreenPage extends StatelessWidget {  
//   @override  
//   Widget build(BuildContext context) {  
//     return SplashScreen(  
//       seconds: 5,  
//       // ignore: unnecessary_new 
//       navigateAfterSeconds: MyBottomBar(),  
//       backgroundColor: Color.fromARGB(255, 52, 233, 209), 
//       title: Text('E-JKM',textScaleFactor: 2, style: TextStyle(fontWeight: FontWeight.bold,color:AppColors.baseWhiteColor),),      
//       image: Image.asset('images/elogo3.png'),
//       loadingText: Text("Loading"),  
//       photoSize: 150.0,  
//       loaderColor: Colors.red,  
//     );  
//   }  
// }  

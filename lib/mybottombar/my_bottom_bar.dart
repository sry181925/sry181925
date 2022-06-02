// ignore_for_file: prefer_const_constructors

import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/screens/homepage/home_page.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyBottomBar extends StatefulWidget {


  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // ignore: prefer_final_fields
  static  List<Widget> _widgetOptions = <Widget>[
   HomePage(),
    Text(
      '2 page',
      style: optionStyle,
    ),
    Text(
      '3 page',
      style: optionStyle,
    ),
    Text(
      '4 paGE',
      style: optionStyle,
    ),
    Text(
      '5 PAGE',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.baseGrey40Color,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
           
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '',
          
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.baseDarkPinkColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

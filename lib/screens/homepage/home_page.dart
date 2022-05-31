// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:e_jkmm/appcolors/app_colors.dart';
import 'package:e_jkmm/data/home-page-data/home-page-data.dart';
import 'package:e_jkmm/stylies/home_screen_stylies.dart';
import 'package:e_jkmm/svgimages/svg_images.dart';
import 'package:e_jkmm/widgets/show_all_widget.dart';
import 'package:e_jkmm/widgets/singleProduct_widget.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  AppBar buildAppBar(){
return AppBar(
  bottom: TabBar(
      labelPadding: EdgeInsets.symmetric(horizontal: 20,),
      indicator: BoxDecoration(
      color: Colors.transparent,
      ),
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.label ,
      labelStyle: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      ),
      unselectedLabelColor: AppColors.baseBlackColor,
      tabs: [
        Text("All"),
        Text("Clothing"),
        Text("Shoes"),
        Text("Accesories"),
      ],
      ),
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  centerTitle: true,
  title: Column(children: [
    Text("welcome",
    style: HomeScreenStylies.appBarUpperTitleStylies,
    )
  ]),
actions: [
  IconButton(onPressed:(){}, icon: RotationTransition( turns: AlwaysStoppedAnimation(90/360),
  child: SvgPicture.asset(SvgImages.filter,
  color: AppColors.baseBlackColor,
  width: 30,),),
  ),
  IconButton(onPressed:(){}, icon:SvgPicture.asset(SvgImages.search,
  color: AppColors.baseBlackColor,
  width: 30,),
  )
],
)  ;   
}
Widget buildAdvertismentPlace(){
  return Padding(
  padding:EdgeInsets.all(10.0),
  child: Container(height: 200,width: 300,
  child: ListView(
        children: [
          CarouselSlider(
              items: [
                Container(
                  margin: EdgeInsets.only(top:6.0,bottom:6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage("https://cdn.acowebs.com/wp-content/uploads/2019/02/Impact-of-eCommerce-On-Society.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage("https://thumbs.dreamstime.com/z/e-commerce-sale-discount-flat-vector-illustration-online-shopping-buyer-seeking-cheap-dresses-special-offers-womens-clothing-145448368.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.only(top:6.0,bottom: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage('https://img.freepik.com/free-vector/e-commerce-icon-robotic-hand-internet-shopping-online-purchase-add-cart_127544-586.jpg?w=2000 '),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //4th Image of Slider
                Container(
                  margin: EdgeInsets.only(top:6.0,bottom: 6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage('https://www.hubspot.com/hubfs/ecommerce%20busines.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //5th Image of Slider
                Container(
                  margin: EdgeInsets.only(top:6.0,bottom:6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage("https://www.itkhoj.com/wp-content/uploads/2017/08/E-Commerce-in-Hindi-678x381.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
  
          ],
              
//Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
          ),
        ],
  ),
  ),
      );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body:TabBarView(children:[
          ListView(
            physics: BouncingScrollPhysics(),
            children: [
              buildAdvertismentPlace(),   
              ShowAllWidget(leftText: "New Arrival"), 
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0 ),
              child: GridView.builder(shrinkWrap: true,
                primary: true,
                itemCount: singleProductData.length, 
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                childAspectRatio: 0.7), itemBuilder: (context,index){
            var data=singleProductData[index];
            return SingleProductWidget(
             productImage: data.productImage,
             productName: data.productName,
             productModel: data.productModel, 
             productPrice: data.productPrice, 
             productOldPrice: data.productOldPrice, 
             onPressed: (){},);
          }),)
            ],
          ),
          Center(child: Text("2 page")),
          Center(child: Text("3 page")),
          Center(child: Text("4 Page")),
        ])
    
      ),
    );
  }
}

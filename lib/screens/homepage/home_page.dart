// ignore: import_of_legacy_library_into_null_safe
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:e_jkmm/routes/routes.dart';
import 'package:e_jkmm/screens/detailscreen/detail_screen.dart';
import 'package:e_jkmm/tabbar_data.dart';
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
      // ignore: prefer_const_literals_to_create_immutables
      tabs: [
     
        Text("All"),
    
        Text("Clothing"),

        Text("Shoes"),
      
        Text("Accesories"),
      ],
      ),
  backgroundColor: Colors.black12,
  elevation: 0.0,
  centerTitle: true,

  // ignore: prefer_const_literals_to_create_immutables
  title: Column(children: [ Text("E-JKM",style: HomeScreenStylies.appBarUpperTitleStylies,),
  ],),
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

//Advertisment portal code is here

Widget buildAdvertismentPlace(){
  return Padding(

  padding:EdgeInsets.all(10.0),
  // ignore: sized_box_for_whitespace
  child: Container(height: 200,width: 300,
  child: ListView(
        children: [
          CarouselSlider(
              items: [

//1st Image of Slider 

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
                height: 185.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 17 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 900),
                viewportFraction: 0.8,
              ),
          ),
        ],
  ),
  ),
      );
}

//Tranding product fuction create here

 Widget buildTrendingProduct({
    required String productImage,
    required String productName,
    required String productModel,
    required double productPrice,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 30, right: 20, bottom: 20),
      height: 65,
      child: Row(
        children: [
         
          Expanded(
            flex: 2,
            child: Material(
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(productImage),
            ),
          ),
          Expanded(
            flex: 2,
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    overflow: TextOverflow.ellipsis,
                    style: HomeScreenStylies.trendingProductNameStyle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    productModel,
                    style: HomeScreenStylies.trendingProductModelStyle,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: MaterialButton(
              color: AppColors.baseLightPinkColor,
              elevation: 0,
              height: 30,
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              onPressed: () {},
              child: Text(
                "\$ $productPrice",
                style: HomeScreenStylies.trendingProductPriceStyle,
              ),
            ),
          )
        ],
      ),
    );
  }

//Main function is create here 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body:TabBarView(children:[
          ListView(
            physics: BouncingScrollPhysics(),
            children: [

 // Advertisment function call here 
             
              buildAdvertismentPlace(),   
              
              ShowAllWidget(leftText: "New Arrival"), 
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0 ),
              child: GridView.builder(shrinkWrap: true,
                primary: true,
                itemCount: singleProductData.length, 
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7), 
                itemBuilder: (context,index){
            var data=singleProductData[index];
            return SingleProductWidget(
             productImage: data.productImage,
             productName: data.productName,
             productModel: data.productModel, 
             productPrice: data.productPrice, 
             productOldPrice: data.productOldPrice, 
             onPressed: (){
               PageRouting.goToNextPage(
                                context: context, 
                                navigateTo: DetailScreen(
                                  data: data
                                  ),
                              );
             },);
          }
          ),
          ),
        Divider(
                  indent: 16,
                  endIndent: 16,
                ),
//Images for the tranding product

                ShowAllWidget(
                  leftText: "What's trending",
                ),
                buildTrendingProduct(
                  productImage:
                      'https://static.langimg.com/thumb/msid-86755841,imgsize-180812,width-700,height-525,resizemode-75/navbharat-times.jpg',
                  productModel: 'shirt',
                  productName: 'Formal shirt for mens',
                  productPrice: 15.3,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://static.langimg.com/thumb/msid-91511914,imgsize-37772,width-700,height-525,resizemode-75/navbharat-times.jpg',
                  productModel: 'Shoes',
                  productName: 'Nike shoes for man',
                  productPrice: 25.5,
                ),
                buildTrendingProduct(
                  productImage:
                      'https://cdn.shopify.com/s/files/1/0282/3313/8275/files/20220225_CHRM_HP_REDESIGN_Desktop_P4_Accessories_300x.jpg?v=1645829626',
                  productModel: 'Accesories',
                  productName: 'Women Accessories',
                  productPrice: 30.2,
                ),

                ShowAllWidget(leftText: "History"),
                  // ignore: sized_box_for_whitespace
                  Container(
                  height: 260,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleProductData.length,
               
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,childAspectRatio: 1.5),
                    itemBuilder: (context,index){
                        var data=singleProductData[index];
                        return SingleProductWidget(
                            onPressed: (){
                            PageRouting.goToNextPage(
                                context: context, 
                                navigateTo: DetailScreen(
                                  data: data
                                  ),
                              );
                          },
                         productImage: data.productImage,
                         productName: data.productName,
                         productModel: data.productModel, 
                         productPrice: data.productPrice, 
                         productOldPrice: data.productOldPrice, 
                       );
                    },
                    ),
                  ),
            ],
          ),

          TabBarBar(productData: colothsData,),
          TabBarBar(productData: shoesData,), 
          TabBarBar(productData: accessoriesData,),
        ])
      ),
    );
  }
}

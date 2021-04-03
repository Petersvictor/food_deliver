import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/all_resturants/all_resturants.dart';
import 'package:multi_ui/fooddel/all_special_offers/all_special_offers.dart';
import 'package:multi_ui/fooddel/all_top_rated/all_top_rated.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/food_detail/food_detail.dart';
import 'package:multi_ui/fooddel/homepage/components/category_item.dart';
import 'package:multi_ui/fooddel/homepage/components/food_item.dart';
import 'package:multi_ui/fooddel/homepage/components/restaurant_card.dart';
import 'package:multi_ui/fooddel/restaurant_detail/restaurant_detail.dart';
import 'package:multi_ui/models/product.dart';
import 'package:multi_ui/models/restaurant.dart';
import 'package:multi_ui/size_config.dart';

class HomePage extends StatelessWidget {

  final List<Map<String, String>> categories = [
    {
      "title": "Pizza",
      "image": "assets/svgs/pizza-slice.svg"
    },
    {
      "title": "Burger",
      "image": "assets/svgs/hamburger.svg"
    },
    {
      "title": "Bread",
      "image": "assets/svgs/steak.svg"
    },
    {
      "title": "Meat",
      "image": "assets/svgs/meat.svg"
    },
    {
      "title": "Drink",
      "image": "assets/svgs/cheers.svg"
    },
    {
      "title": "Pizza",
      "image": "assets/svgs/pizza-slice.svg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),
      bottomNavigationBar: CustomNavBar(),
      appBar: AppBar(
        actions: [

          IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).hintColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              SizedBox(height: getProportionateScreenHeight(20),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.05,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textSelectionColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(10),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(categories.length, (index) {
                      return CategoryItem(
                        icon: categories[index]['image'],
                        title: categories[index]['title'],
                      );
                    }),
                  ],
                ),
              ),
              TitleAndMore(title: 'Special Offers', press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AllSpecialOffers()));
              },),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(demoProducts.length, (index){
                      return FoodItem(
                        product: demoProducts[index],
                        discounted: true,
                        press: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetail(product: demoProducts[index])));
                      },);
                    })
                  ],
                ),
              ),
              TitleAndMore(title: 'Top Rated', press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AllTopRated()));
              },),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(demoProducts.length, (index){
                      return FoodItem(
                        product: demoProducts[index],
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetail(product: demoProducts[index],)));
                        },
                      );
                    })
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15),),
              TitleAndMore(title: 'Top Restaurant', press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AllRestaurants()));
              },),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(demoRestaurant.length, (index){
                      return RestaurantCard(
                        restaurant: demoRestaurant[index],
                        press: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantDetail(restaurant: demoRestaurant[index],)));
                        },
                      );
                    })
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key, this.press,
  }) : super(key: key);

  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        height: SizeConfig.screenHeight * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Row(
          children: [
            Icon(
                Icons.search,
              color: Theme.of(context).hintColor,
            ),
           SizedBox(width: 3,),
           Expanded(
             flex: 2,
               child: TextField(
                 maxLines: null,
                 decoration: InputDecoration(
                   hintText: 'What do you want to eat?',
                   hintStyle: TextStyle(
                       color: Theme.of(context).hintColor,
                       fontSize: SizeConfig.screenWidth * 0.04,
                     fontWeight: FontWeight.w300
                   ),
                   border: InputBorder.none,
                 ),
               )),
            IconButton(
              icon: Icon(Icons.filter_list, color: Theme.of(context).hintColor,),
              onPressed: press,
            )
          ],
        ),
      ),
    );
  }
}

class TitleAndMore extends StatelessWidget {
  const TitleAndMore({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.05,
              fontWeight: FontWeight.w600,
              color: Theme.of(context).textSelectionColor
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'View all',
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.04,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).hintColor
              ),
            ),
          )
        ],
      ),
    );
  }
}


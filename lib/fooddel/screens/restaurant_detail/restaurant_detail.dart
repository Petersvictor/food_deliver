import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/components/review_box.dart';
import 'package:multi_ui/fooddel/models/product.dart';
import 'package:multi_ui/fooddel/models/restaurant.dart';
import 'package:multi_ui/fooddel/screens/cart/cart_screen.dart';
import 'package:multi_ui/fooddel/screens/food_detail/food_detail.dart';
import 'package:multi_ui/fooddel/screens/homepage/components/food_item.dart';
import 'package:multi_ui/fooddel/screens/homepage/homepage.dart';
import 'package:multi_ui/fooddel/screens/reviews/reviews_screen.dart';
import 'package:multi_ui/size_config.dart';

class RestaurantDetail extends StatelessWidget {

  RestaurantDetail({this.restaurant});

  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 30/100 * SizeConfig.screenHeight,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(restaurant.image),
                        fit: BoxFit.cover
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 38,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_sharp,
                              size: 20,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                        },
                        child: Container(
                          width: 38,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surface,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  size: 20,
                                  color: Theme.of(context).hintColor,
                                ),
                                Positioned(
                                  right: -7,
                                  top: -5,
                                  child: Container(
                                    height: 13,
                                    width: 13,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: SizeConfig.screenWidth * 0.02,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              restaurant.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: getProportionateScreenWidth(26)
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth /2.3,
                              child: Text(
                                restaurant.foodType,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize:getProportionateScreenWidth(16)
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          restaurant.price,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenWidth(26)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: kPrimaryColor,
                            ),
                            SizedBox(
                              width: SizeConfig.screenWidth /2,
                              child: Text(
                                restaurant.address,
                                maxLines: 2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: getProportionateScreenWidth(16)
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0XFFFFC107),
                            ),
                            SizedBox(width: 3,),
                            Text(
                              restaurant.rating.toString(),
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(16),
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 2,),
                            Text(
                              '(${restaurant.ratingNo})',
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    TitleAndMore(title: 'Reviews', press: () {},),
                    ReviewBox(
                      press: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewScreen()));
                      },
                    ),
                  ],
                ),
              ),
              TitleAndMore(title: 'Recommended meal', press: () {},),
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
            ],
          ),
        ),
      )
    );
  }
}



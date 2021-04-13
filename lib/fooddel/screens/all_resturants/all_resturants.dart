import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/models/restaurant.dart';
import 'package:multi_ui/fooddel/screens/restaurant_detail/restaurant_detail.dart';
import 'package:multi_ui/size_config.dart';

class AllRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Restaurants',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(demoRestaurant.length, (index){
                return AllRestaurantsCard(
                  restaurant: demoRestaurant[index],
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RestaurantDetail(restaurant: demoRestaurant[index],)));
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class AllRestaurantsCard extends StatelessWidget {
  const AllRestaurantsCard({
    Key key, this.press,
    @required this.restaurant,
  }) : super(key: key);

  final GestureTapCallback press;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: GestureDetector(
        onTap: press,
        child: Container(
          width: SizeConfig.screenWidth,
          padding: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Theme.of(context).cardColor,
            boxShadow: [kDefaultShadow]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getProportionateScreenHeight(100),
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(7.0),
                        topLeft: Radius.circular(7.0)
                    ),
                    image: DecorationImage(
                        image: AssetImage(restaurant.image),
                        fit: BoxFit.cover
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: getProportionateScreenHeight(29),
                      width: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(7.0)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Color(0XFFFFC107),
                          ),
                          Text(
                            restaurant.rating.toString(),
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(12),
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(5),),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getProportionateScreenWidth(100),
                          child: Text(
                            restaurant.title,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.screenWidth * 0.04,
                                color: Theme.of(context).textSelectionColor
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 108,
                          child: Text(
                            restaurant.foodType,
                            style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.03,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).hintColor
                            ),
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Text(
                      restaurant.price,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(17),
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textSelectionColor
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

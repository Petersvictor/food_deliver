import 'package:flutter/material.dart';
import 'package:multi_ui/fooddel/food_detail/food_detail.dart';
import 'package:multi_ui/fooddel/homepage/components/food_item.dart';
import 'package:multi_ui/models/product.dart';
import 'package:multi_ui/size_config.dart';

class AllSpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Special Offers',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2 ,
            mainAxisSpacing: 20,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 2),
            children: List.generate(demoProducts.length,(index){
              return FoodItem(
                product: demoProducts[index],
                press: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetail(product: demoProducts[index])));
                },);
            }),
          )
      ),
    );
  }
}
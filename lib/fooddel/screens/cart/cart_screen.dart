import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/screens/check_out/check_out.dart';
import 'package:multi_ui/size_config.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(bottom: 15),
            child: Column(
              children: [
                CartItem(),
                CartItem(),
                CartItem(),
                SizedBox(height: getProportionateScreenHeight(30),),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Items',
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.04,
                                fontWeight: FontWeight.w400,
                                color: Theme.of(context).hintColor
                              ),
                            ),
                            Text(
                              '\$29.0',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).hintColor
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenWidth(10),),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text(
                              'Added Taxes',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).hintColor
                              ),
                            ),
                            Spacer(),
                            Text(
                              '\$0.20',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w400,
                                  color: Theme.of(context).hintColor
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(15),),
                      Divider(
                        color: Theme.of(context).hintColor,
                        thickness: 1,
                      ),
                      SizedBox(height: getProportionateScreenHeight(10),),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).textSelectionColor
                              ),
                            ),
                            Spacer(),
                            Text(
                              '\$29.20',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w600,
                                color: kPrimaryColor
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(40),),
                DefaultButton(
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
                  },
                  text: 'Continue',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: SizeConfig.screenHeight * 0.165,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [kDefaultShadow],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              height: SizeConfig.screenHeight * 0.165,
              width: getProportionateScreenWidth(118),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10)
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/casey-lee-awj7sRviVXo-unsplash.jpg'),
                  fit: BoxFit.cover
                )
              ),
            ),
            SizedBox(width: getProportionateScreenHeight(10),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(118),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Salmon and Zucchini',
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.045,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).textSelectionColor
                              ),
                            ),
                            Text(
                              'Italian Chaffeur',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.screenWidth * 0.035,
                                  color: Theme.of(context).hintColor
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(60),),
                      Icon(Icons.close, color: Theme.of(context).hintColor,),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: getProportionateScreenWidth(30),
                              width: getProportionateScreenWidth(30),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Theme.of(context).hintColor),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.05,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: SizeConfig.screenWidth * 0.05,
                              ),
                            ),
                            Container(
                              height: getProportionateScreenWidth(30),
                              width: getProportionateScreenWidth(30),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0XFFC4C4C4)),
                                borderRadius: BorderRadius.circular(3)
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.05,
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(60),),
                      Text(
                        '\$12.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.screenWidth * 0.05,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

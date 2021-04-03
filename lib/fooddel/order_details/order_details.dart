import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/cart/cart_screen.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/models/product.dart';
import 'package:multi_ui/size_config.dart';

class OrderDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order details',
          style: TextStyle(color: Theme.of(context).textSelectionColor, fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(15),),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Order №1947034',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenWidth * 0.04,
                            ),
                          ),
                          Text(
                            '05-12-2019',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.screenWidth * 0.04,
                              color: Theme.of(context).hintColor
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(15),),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tracking number:',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.screenWidth * 0.04,
                              color: Color(0XFF858585),
                            ),
                          ),
                          SizedBox(width: getProportionateScreenWidth(15),),
                          Text(
                            'IW3475453455',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: SizeConfig.screenWidth * 0.04,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(15),),
                      Text(
                        '2 Items',
                        style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.04,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                ...List.generate(2, (index){
                  return OrderDetailsCard(
                    product: demoProducts[index],
                    press: () {},
                  );
                }),
                SizedBox(height: getProportionateScreenHeight(15),),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Order information',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.05,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(15),),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: SizeConfig.screenWidth / 3,
                            child: Text(
                              'Shipping Address:',
                              style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.04,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth * 0.5,
                            child: Text(
                              '3 Newbridge Court ,Chino Hills, CA 91709, United States',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(15),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: SizeConfig.screenWidth / 3,
                            child: Text(
                              'Payment method:',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth / 2,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svgs/masterrr.svg',
                                  height: 35,
                                  width: 35,
                                ),
                                SizedBox(
                                  width: SizeConfig.screenWidth * 0.3,
                                  child: Text(
                                    '**** **** **** 3947',
                                    style: TextStyle(
                                        fontSize: SizeConfig.screenWidth * 0.04,
                                        fontWeight: FontWeight.bold,
                                      letterSpacing: 0.6
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(15),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: SizeConfig.screenWidth / 3,
                            child: Text(
                              'Discount:',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth / 2,
                            child: Text(
                              'NIL',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(15),),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: SizeConfig.screenWidth / 3,
                            child: Text(
                              'Total Amount:',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.screenWidth / 2,
                            child: Text(
                              '\$36',
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.04,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(35),),
                DefaultButton(
                  press: () {},
                  text: 'Re-Order',
                ),
                SizedBox(height: getProportionateScreenHeight(20),),
                Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                        height: getProportionateScreenHeight(60),
                        width: 75/100 * SizeConfig.screenWidth,
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40)
                            )
                        ),
                        child: Center(
                          child: Text(
                            'Back to home',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderDetailsCard extends StatelessWidget {
  const OrderDetailsCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      image: AssetImage(product.image),
                      fit: BoxFit.cover
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getProportionateScreenHeight(20),
                    width: 41,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7.0)
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
                          product.rating.toString(),
                          style: TextStyle(
                              fontSize: SizeConfig.screenWidth * 0.025,
                              fontWeight: FontWeight.w500,
                            color: Colors.black
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(10),),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 118,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.042,
                                  fontWeight: FontWeight.w600,
                                color: Theme.of(context).textSelectionColor
                              ),
                            ),
                            Text(
                              product.foodType,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.screenWidth * 0.034,
                                  color: Theme.of(context).hintColor
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: getProportionateScreenWidth(40)),
                      Icon(Icons.close, color: Theme.of(context).hintColor,),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '\$ ${product.price}',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.screenWidth * 0.05,
                      color: Theme.of(context).textSelectionColor
                    ),
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


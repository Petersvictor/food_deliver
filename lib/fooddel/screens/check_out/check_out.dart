import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/models/delivery_method.dart';
import 'package:multi_ui/fooddel/screens/order_confirmed/order_confirmed.dart';
import 'package:multi_ui/fooddel/screens/payment_methods/payment_method.dart';
import 'package:multi_ui/fooddel/screens/shipping_addresses/shipping_addresses.dart';
import 'package:multi_ui/size_config.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {

  int selectedIndex;
  String selectedDeliveryMethod = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Check out',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
             fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery address',
                    style: TextStyle(
                       fontSize: SizeConfig.screenWidth * 0.05,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).textSelectionColor
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingAddresses()));
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.04,
                          fontWeight: FontWeight.w400,
                        color: kPrimaryColor
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10),),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: SizeConfig.screenWidth /1.5,
                child: Text(
                  '4517 Washington Ave. Manchester, Kentucky 39495',
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.04,
                  ),
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Delivery method',
                style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.05,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(10),),
            Column(
              children: [
                ...List.generate(
                    deliveryMethods.length,
                        (index) {
                      return DeliveryMethodSelector(
                        deliveryMethods: deliveryMethods[index],
                        containerColor: selectedIndex == index ? kPrimaryColor : Colors.transparent,
                        press: () {
                          setState(() {
                            selectedIndex = index;
                            selectedDeliveryMethod = deliveryMethods[index].title;
                          });
                        },
                      );
                        })
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment method',
                    style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.05,
                        fontWeight: FontWeight.w600,
                      color: Theme.of(context).textSelectionColor
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethods()));
                    },
                    child: Text(
                      'Change',
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.04,
                          fontWeight: FontWeight.w400,
                          color: kPrimaryColor
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset('assets/svgs/masterrr.svg', height: SizeConfig.screenHeight * 0.1, width: SizeConfig.screenHeight * 0.1,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'HSBC Mastercard',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.screenWidth * 0.05,
                        color: Theme.of(context).textSelectionColor
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(4),),
                    Text(
                      '**** **** **** 9769',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.screenWidth * 0.04,
                        color: Theme.of(context).hintColor
                      ),
                    )
                  ],
                )
              ],
            ),
            // SizedBox(height: getProportionateScreenHeight(15),),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.surface,
                padding: EdgeInsets.only(
                  top: 20
                ),
                child: Column(
                  children: [
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
                                    color: Theme.of(context).textSelectionColor
                                  ),
                                ),
                                Text(
                                  '\$29.0',
                                  style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.04,
                                      fontWeight: FontWeight.w400,
                                    color: Theme.of(context).textSelectionColor
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: getProportionateScreenHeight(10),),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Added Taxes',
                                  style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.04,
                                      fontWeight: FontWeight.w400,
                                    color: Theme.of(context).textSelectionColor
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '\$0.20',
                                  style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.04,
                                      fontWeight: FontWeight.w400,
                                    color: Theme.of(context).textSelectionColor
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
                                      fontWeight: FontWeight.w700
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OrderConfirmed()));
                      },
                      text: 'Place my order',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DeliveryMethodSelector extends StatelessWidget {
  const DeliveryMethodSelector({
    Key key, this.deliveryMethods, this.containerColor, this.press,
  }) : super(key: key);

  final DeliveryMethods deliveryMethods;
  final Color containerColor;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: press,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Theme.of(context).hintColor
                    ),
                  ),
                ),
                Positioned(
                  top: 2.5,
                  left: 2.5,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: containerColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: getProportionateScreenWidth(15),),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deliveryMethods.title,
                  style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.042,
                    fontWeight: FontWeight.w600
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(3),),
                SizedBox(
                  width: SizeConfig.screenWidth/2,
                  child: Text(
                    deliveryMethods.subTitle,
                    style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.034,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              deliveryMethods.amount,
              style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.04,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      )
    );
  }
}

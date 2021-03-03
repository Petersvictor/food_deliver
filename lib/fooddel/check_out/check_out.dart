import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/order_confirmed/order_confirmed.dart';
import 'package:multi_ui/size_config.dart';
import 'package:multi_ui/fooddel/shipping_addresses/shipping_addresses.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(top: 15),
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
                         fontSize: 22,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingAddresses()));
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          color: Color(0XFFE73D47)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  width: SizeConfig.screenWidth /1.5,
                  child: Text(
                    '4517 Washington Ave. Manchester, Kentucky 39495',
                    style: TextStyle(
                      fontSize: 18
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Delivery method',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0XFF474747)
                        ),
                        shape: BoxShape.circle
                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deliver to my address',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        SizedBox(height: 3,),
                        SizedBox(
                          width: SizeConfig.screenWidth/2,
                          child: Text(
                            'Item will be delivered to your address',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      '\$2.3',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                )
              ),
              SizedBox(height: 15,),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                                  color: Color(0XFF474747)
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
                                color: Color(0XFFE73D47),
                                shape: BoxShape.circle,

                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pick up by self',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(height: 3,),
                          SizedBox(
                            width: SizeConfig.screenWidth/2,
                            child: Text(
                              'Pick up your item at the vendor office',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Text(
                        '\$1.09',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  )
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment method',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingAddresses()));
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFFE73D47)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/svgs/masterrr.svg', height: 100, width: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'HSBC Mastercard',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22
                        ),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        '**** **** **** 9769',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          color: Color(0XFF474747)
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 15,),
              Expanded(
                child: Container(
                  color: Color(0XFFECECEC),
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Text(
                                    '\$29.0',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Added Taxes',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$0.20',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 15,),
                            Divider(
                              color: Color(0XFFC4C4C4),
                              thickness: 1,
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Total',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '\$29.20',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0XFFE73D47)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => OrderConfirmed()));
                            },
                            child: Container(
                              height: 60,
                              width: 75/100 * SizeConfig.screenWidth,
                              decoration: BoxDecoration(
                                  color: Color(0XFFE73D47),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40),
                                      bottomRight: Radius.circular(40)
                                  )
                              ),
                              child: Center(
                                child: Text(
                                  'Place my order',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

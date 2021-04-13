import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/screens/order_details/order_details.dart';
import 'package:multi_ui/size_config.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My orders',
          style: TextStyle(color: Theme.of(context).textSelectionColor, fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyOrdersCategoryItem(
                      isSelected: true,
                      category: 'Delivered',
                    ),
                    MyOrdersCategoryItem(
                      category: 'Processing',
                    ),
                    MyOrdersCategoryItem(
                      category: 'Cancelled',
                    ),
                  ],
                ),
              ),
              SizedBox(height:20),
              MyOrderCard(
                orderNo: 'Order №1947034',
                date: '02-01-2021',
                trackingNo: 'IW3475453455',
                quantity: '1',
                amount: '6',
                status: 'Delivered',
                press: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => OrderDetails()));
                },
              ),
              MyOrderCard(
                orderNo: 'Order №1969084',
                date: '02-01-2021',
                trackingNo: 'IW3476853481',
                quantity: '4',
                amount: '26',
                status: 'Delivered',
                press: (){},
              ),
              MyOrderCard(
                orderNo: 'Order №1906739',
                date: '02-01-2021',
                trackingNo: 'IW3475783496',
                quantity: '2',
                amount: '15.6',
                status: 'Delivered',
                press: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({
    Key key,
    this.orderNo,
    this.date,
    this.trackingNo,
    this.quantity,
    this.amount,
    this.status,
    this.press,
  }) : super(key: key);

  final String orderNo, date, trackingNo, quantity, amount, status;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          // height: SizeConfig.screenHeight * 0.2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [kDefaultShadow]
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    orderNo,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.04,
                      color: Theme.of(context).textSelectionColor
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.screenWidth * 0.04,
                      color: Theme.of(context).hintColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(10),),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tracking number:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.screenWidth * 0.04,
                      color: Theme.of(context).hintColor
                    ),
                  ),
                  SizedBox(width: getProportionateScreenHeight(10),),
                  Text(
                    trackingNo,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.04,
                      color: Theme.of(context).textSelectionColor
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quantity',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.screenWidth * 0.04,
                          color: Theme.of(context).hintColor
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        quantity,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.screenWidth * 0.04,
                          color: Theme.of(context).textSelectionColor
                        ),
                      ),

                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total amount',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.screenWidth * 0.04,
                          color: Theme.of(context).hintColor
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text(
                        '\$' + amount,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.screenWidth * 0.05,
                          color: Theme.of(context).textSelectionColor
                        ),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 0.04,
                    width: getProportionateScreenWidth(100),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Theme.of(context).textSelectionColor,
                        width: 1
                      )
                    ),
                    child: Center(
                      child: Text(
                        'Details',
                        style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.04,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textSelectionColor
                        ),
                      ),
                    ),
                  ),
                  Text(
                    status,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig.screenWidth * 0.04,
                      color: Color(0XFF55D85A)
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

class MyOrdersCategoryItem extends StatelessWidget {
  const MyOrdersCategoryItem({
    Key key, this.category, this.isSelected = false,
  }) : super(key: key);

  final String category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 6, left: 5, top: 15),
      child: Container(
        height: getProportionateScreenHeight(35),
        width: SizeConfig.screenWidth / 3.3,
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).textSelectionColor: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.04,
              fontWeight: FontWeight.w500,
              color: isSelected ? Theme.of(context).scaffoldBackgroundColor : Theme.of(context).hintColor
            ),
          ),
        ),
      ),
    );
  }
}

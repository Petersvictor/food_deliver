import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/check_out/check_out.dart';
import 'package:multi_ui/size_config.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body:SafeArea(
        child: Column(
          children: [
            CartItem(),
            CartItem(),
            CartItem(),
            SizedBox(height: 30,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
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
                        'Continue',
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
        height: 124,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [kDefaultShadow],
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          children: [
            Container(
              height: 124,
              width: 118,
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
            SizedBox(width: 10,),
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
                              'Salmon and Zucchini',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              'Italian Chaffeur',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0XFF686868)
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.screenWidth / 4,),
                      Icon(Icons.close),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0XFFC4C4C4)),
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '2',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0XFFC4C4C4)),
                                borderRadius: BorderRadius.circular(3)
                              ),
                              child: Center(
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      // Spacer(),
                      SizedBox(width: SizeConfig.screenWidth/4,),
                      Text(
                        '\$12.00',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20
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

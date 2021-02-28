import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/fooddel/cart/cart_screen.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/size_config.dart';

class OrderConfirmed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: [
            Container(
              height: 4.5/6 * SizeConfig.screenHeight,
              width: double.infinity,
              color: Color(0XFFE73D47),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svgs/confirmed.svg'),
                  SizedBox(height: 20,),
                  SizedBox(
                    width: SizeConfig.screenWidth /1.5,
                    child: Text(
                      'Your order has been received',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.1,
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  SizedBox(height: 6,),
                  SizedBox(
                    width: SizeConfig.screenWidth /1.2,
                    child: Text(
                      'Your receipt has been sent to your email. A delivery person will contact you shortly',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
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
                        'Track Order',
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
            SizedBox(height: 20,),
            Row(
              children: [
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 60,
                    width: 75/100 * SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                        color: Color(0XFF222433),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            bottomLeft: Radius.circular(40)
                        )
                    ),
                    child: Center(
                      child: Text(
                        'Back to home',
                        style: TextStyle(
                            fontSize: 20,
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
    );
  }
}

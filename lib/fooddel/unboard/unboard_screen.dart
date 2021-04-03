import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/fooddel/splash_screen/splash_screen.dart';

import '../../size_config.dart';

class UnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                  'assets/images/lala.png',
                height: getProportionateScreenHeight(60),
                width: getProportionateScreenWidth(150),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SplashScreen()));
                    },
                    child: Container(
                      height: getProportionateScreenHeight(60),
                      width: SizeConfig.screenWidth * 0.75,
                      decoration: BoxDecoration(
                          color: kBoxColorDark,
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
            ),
          ],
        ),
      ),
    );
  }
}

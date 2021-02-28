import 'package:flutter/material.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';

import '../../size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE73D47),
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/images/lala.png'),
          ),
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
      ),
    );
  }
}

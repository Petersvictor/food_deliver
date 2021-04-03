import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/login_screen/login_screen.dart';
import 'package:multi_ui/fooddel/splash_screen/components/splash_content.dart';
import 'package:multi_ui/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "title": "Quick Delivery",
        "desc": "Order food from anywhere and get it withing few minutes",
        "image": "assets/svgs/undraw_deliveries_131a 1.svg"
      },
      {
        "title": "Fresh Foods",
        "desc": "All meals are served fresh and hot, anywhere, anytime",
      "image": "assets/svgs/undraw_Hamburger_8ge6.svg"
      },
      {
        "title": "+100 Restaurants",
      "desc": "Enjoy meals from over hundred restaurants and numerous chefs",
        "image": "assets/svgs/undraw_Chef_cu0r 1.svg"
      },
    ];
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenWidth(20),),
              Padding(
                padding:  EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenWidth * 0.04,
                            color: kPrimaryColor
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Expanded(
                flex: 4,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    title: splashData[index] ['title'],
                    desc: splashData[index] ['desc'],
                    image: splashData[index] ['image'],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(splashData.length, (index) => buildDot(index: index)),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              DefaultButton(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                text: 'Continue to Login',
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
            ],
          )
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 4,
      width: 25,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kTextFaintColorDark ,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}








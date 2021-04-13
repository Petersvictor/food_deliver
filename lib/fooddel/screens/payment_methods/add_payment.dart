import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/size_config.dart';

class AddPaymentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add payment method',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: 30,
                          right: 20
                      ),
                      height: SizeConfig.screenHeight * 0.26,
                      width: SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/mastercard.png'),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: SizeConfig.screenHeight * 0.26 / 6,),
                          Text(
                            '* * * *  * * * *  * * * *  9769',
                            style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.8
                            ),
                          ),
                          SizedBox(height: SizeConfig.screenHeight * 0.26 / 6,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Card Holder Name',
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.028,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Name Surname',
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.05,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Expiry Date',
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.028,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'MM/YY',
                                    style: TextStyle(
                                      fontSize: SizeConfig.screenWidth * 0.04,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SvgPicture.asset(
                                'assets/svgs/mastercardlogo.svg',
                                height: SizeConfig.screenWidth * 0.1,
                                width: SizeConfig.screenWidth * 0.1,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    buildNameOnCardFormField(context),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    buildCardNumberFormField(context),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: SizeConfig.screenWidth / 2.3,
                            child: buildExpiryFormField(context)),
                        SizedBox(
                          width: SizeConfig.screenWidth / 2.3,
                            child: buildCVVFormField(context)),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(40),),
              DefaultButton(
                press: () {},
                text: 'Add card',
              )

            ],
          ),
        ),
      ),
    );
  }
  TextFormField buildNameOnCardFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      // controller: emailController,
      decoration: InputDecoration(
        hintText: 'Enter name on card',
        labelText: 'Name on card',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
          fontSize: SizeConfig.screenWidth * 0.032
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).hintColor),
            gapPadding: 0
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).textSelectionColor),
            gapPadding: 0
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
      ),
    );
  }
  TextFormField buildCardNumberFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      // controller: emailController,
      decoration: InputDecoration(
        hintText: 'Enter card number',
        labelText: 'Card number',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).hintColor),
            gapPadding: 0
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).textSelectionColor),
            gapPadding: 0
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
      ),
    );
  }
  TextFormField buildExpiryFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      // controller: emailController,
      decoration: InputDecoration(
        hintText: 'MM/YY',
        labelText: 'EXP',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).hintColor),
            gapPadding: 0
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).textSelectionColor),
            gapPadding: 0
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
      ),
    );
  }
  TextFormField buildCVVFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      // controller: emailController,
      decoration: InputDecoration(
        hintText: 'CVV',
        labelText: 'CVV',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).hintColor),
            gapPadding: 0
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).textSelectionColor),
            gapPadding: 0
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
            borderSide: BorderSide(color: Colors.red),
            gapPadding: 0
        ),
      ),
    );
  }
}

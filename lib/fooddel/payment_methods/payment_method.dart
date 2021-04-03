import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/payment_methods/add_payment.dart';
import 'package:multi_ui/size_config.dart';

class PaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Payment method',
          style: TextStyle(color: Theme.of(context).textSelectionColor, fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MasterCard(isSelected: true),
            VisaCard(isSelected: false),
            SizedBox(height: getProportionateScreenHeight(20),),
            Padding(
              padding:  EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AddPaymentDetails()));
                    },
                    child: Container(
                      width: getProportionateScreenHeight(55),
                      height: getProportionateScreenHeight(50),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.21),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.add,
                        color: kPrimaryColor
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MasterCard extends StatelessWidget {
  const MasterCard({
    Key key,
    @required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                    letterSpacing: 1.4
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
                          'Jennyfer Doe',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.04,
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
                          '05/23',
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
                      height: getProportionateScreenHeight(40),
                      width: getProportionateScreenHeight(40),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(15),),
          Row(
            children: [
              Container(
                height: getProportionateScreenHeight(20),
                width: getProportionateScreenHeight(20),
                decoration: BoxDecoration(
                    color: isSelected ? Theme.of(context).colorScheme.secondary : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: isSelected ? Colors.transparent : Theme.of(context).colorScheme.secondary
                    )
                ),
                child: isSelected ? Icon(
                  Icons.check,
                  color: Theme.of(context).colorScheme.surface,
                  size: 12,
                ) : Container(),
              ),
              SizedBox(width: getProportionateScreenWidth(5),),
              Text(
                'Use as the default payment method',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
class VisaCard extends StatelessWidget {
  const VisaCard({
    Key key,
    @required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30,
                right: 20,
              top:20
            ),
            height: SizeConfig.screenHeight * 0.26,
            width: SizeConfig.screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/visacard.png'),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/visa.svg',
                    ),
                  ],
                ),
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
                          'Jennyfer Doe',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.04,
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
                          '05/23',
                          style: TextStyle(
                            fontSize: SizeConfig.screenWidth * 0.04,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(15),),
          Row(
            children: [
              Container(
                height: getProportionateScreenHeight(20),
                width: getProportionateScreenHeight(20),
                decoration: BoxDecoration(
                    color: isSelected ? Theme.of(context).colorScheme.secondary : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                        color: isSelected ? Colors.transparent : Theme.of(context).colorScheme.secondary
                    )
                ),
                child: isSelected ? Icon(
                  Icons.check,
                  color: Theme.of(context).colorScheme.surface,
                  size: 12,
                ) : Container(),
              ),
              SizedBox(width: getProportionateScreenWidth(5),),
              Text(
                'Use as the default payment method',
                style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


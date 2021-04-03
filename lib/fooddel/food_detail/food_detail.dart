import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/fooddel/cart/cart_screen.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/components/review_box.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/fooddel/reviews/reviews_screen.dart';
import 'package:multi_ui/models/product.dart';
import '../../constants.dart';
import '../../size_config.dart';
import 'package:multi_ui/fooddel/restaurant_detail/restaurant_detail.dart';

class FoodDetail extends StatelessWidget {
  final Product product;

  FoodDetail({
    @required this.product
});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Body(product: product,)
    );
  }
}

class Body extends StatefulWidget {
   final Product product;

  Body({
    @required this.product
  });

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int no = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: 45/100 * SizeConfig.screenHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.product.image),
                          fit: BoxFit.cover
                      )
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 38,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 20,
                                color: Theme.of(context).hintColor,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                          },
                          child: Container(
                            width: 38,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: [
                                  Icon(
                                    Icons.shopping_cart,
                                    size: 20,
                                    color: Theme.of(context).hintColor,
                                  ),
                                  Positioned(
                                    right: -7,
                                    top: -5,
                                    child: Container(
                                      height: 13,
                                      width: 13,
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        shape: BoxShape.circle
                                      ),
                                      child: Center(
                                        child: Text(
                                          '1',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: SizeConfig.screenWidth * 0.02,
                                            fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 30/100 * SizeConfig.screenHeight,
                  child: Container(
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                        )
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: getProportionateScreenWidth(15),
                            right: getProportionateScreenWidth(15),
                            left: getProportionateScreenWidth(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: getProportionateScreenWidth(200),
                                        child: Text(
                                          widget.product.title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: SizeConfig.screenWidth * 0.06,
                                              color: Theme.of(context).textSelectionColor
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.product.foodType,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: SizeConfig.screenWidth * 0.04,
                                          color: Theme.of(context).hintColor
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0XFFFFC107),
                                        size: getProportionateScreenWidth(28),
                                      ),
                                      Text(
                                        widget.product.rating.toString(),
                                        style: TextStyle(
                                          fontSize: getProportionateScreenWidth(18),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: getProportionateScreenHeight(10),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: getProportionateScreenWidth(150),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              no++;
                                            });
                                          },
                                          child: Container(
                                            height: getProportionateScreenHeight(51),
                                            width: getProportionateScreenWidth(55),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: kPrimaryColor.withOpacity(0.21)
                                            ),
                                            child: Center(
                                              child: Text(
                                                '+',
                                                style: TextStyle(
                                                  fontSize: getProportionateScreenWidth(22),
                                                    color: Theme.of(context).hintColor
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          no.toString(),
                                          style: TextStyle(
                                              fontSize: getProportionateScreenWidth(23),
                                              color: Theme.of(context).hintColor
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              no--;
                                            });
                                          },
                                          child: Container(
                                            height: getProportionateScreenHeight(51),
                                            width: getProportionateScreenWidth(55),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: kPrimaryColor.withOpacity(0.21)
                                            ),
                                            child: Center(
                                              child: Text(
                                                '-',
                                                style: TextStyle(
                                                    fontSize: getProportionateScreenWidth(22),
                                                    color: Theme.of(context).hintColor
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    '\$' + widget.product.price.toString(),
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(22),
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: getProportionateScreenHeight(10),),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.05,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  widget.product.description,
                                  style: TextStyle(
                                    fontSize: SizeConfig.screenWidth * 0.038,
                                  ),
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                'Reviews',
                                style: TextStyle(
                                  fontSize: SizeConfig.screenWidth * 0.05,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5,),
                              ReviewBox(
                                press: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ReviewScreen()));
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(15),),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: Container(
                                height: getProportionateScreenHeight(60),
                                width: 17/100 * SizeConfig.screenWidth,
                                decoration: BoxDecoration(
                                  color: Color(0XFFE73D47).withOpacity(0.26),
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: getProportionateScreenWidth(30),
                                  color: Color(0XFFE73D47),
                                ),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                addMediaModal(context);
                              },
                              child: Container(
                                height: getProportionateScreenHeight(60),
                                width: 75/100 * SizeConfig.screenWidth,
                                decoration: BoxDecoration(
                                  color: Color(0XFFE73D47),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    bottomLeft: Radius.circular(40)
                                  )
                                ),
                                child: Center(
                                  child: Text(
                                    'Add to Cart',
                                    style: TextStyle(
                                      fontSize: getProportionateScreenWidth(19),
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

addMediaModal(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: SizeConfig.screenHeight /2,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [kDefaultShadow],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
          ),
          child: Column(
            children: [
              SvgPicture.asset('assets/svgs/addedtocart.svg', fit: BoxFit.cover,),
              SizedBox(height: getProportionateScreenHeight(10),),
              Text(
                'Added to cart',
                style: TextStyle(
                  color: Color(0XFFE73D47),
                  fontSize: SizeConfig.screenWidth * 0.05,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              DefaultButton(
                press: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                },
                text: 'View cart and Check out',
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: getProportionateScreenHeight(60),
                      width: 75/100 * SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40)
                          )
                      ),
                      child: Center(
                        child: Text(
                          'Continue shopping',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
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
        );
      }
  );
}

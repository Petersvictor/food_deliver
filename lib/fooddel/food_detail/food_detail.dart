import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/fooddel/cart/cart_screen.dart';
import 'package:multi_ui/models/product.dart';
import '../../constants.dart';
import '../../size_config.dart';

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
                  height: 50/100 * SizeConfig.screenHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/anna-pelzer-IGfIGP5ONV0-unsplash.jpg'),
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_sharp,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 38,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Stack(
                              overflow: Overflow.visible,
                              children: [
                                Icon(
                                  Icons.shopping_cart,
                                  size: 20,
                                ),
                                Positioned(
                                  right: -7,
                                  top: -5,
                                  child: Container(
                                    height: 13,
                                    width: 13,
                                    decoration: BoxDecoration(
                                      color: Color(0XFFE73D47),
                                      shape: BoxShape.circle
                                    ),
                                    child: Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 40/100 * SizeConfig.screenHeight,
                  child: Container(
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                        color: kPrimaryLightColor,
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
                            right: getProportionateScreenWidth(20),
                            left: getProportionateScreenWidth(20),
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
                                        width: 150,
                                        child: Text(
                                          widget.product.title,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 29
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Italian cuisine',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18,
                                          color: Color(0XFF686868)
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0XFFFFC107),
                                        size: 32,
                                      ),
                                      Text(
                                        widget.product.rating.toString(),
                                        style: TextStyle(
                                          fontSize: 22,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 150,
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
                                            height: 49,
                                            width: 55,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Color(0XFFE73D47).withOpacity(0.21)
                                            ),
                                            child: Center(
                                              child: Text(
                                                '+',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  color: Color(0XFF474747)
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          no.toString(),
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color(0XFF474747)
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              no--;
                                            });
                                          },
                                          child: Container(
                                            height: 49,
                                            width: 55,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Color(0XFFE73D47).withOpacity(0.21)
                                            ),
                                            child: Center(
                                              child: Text(
                                                '-',
                                                style: TextStyle(
                                                    fontSize: 25,
                                                    color: Color(0XFF474747)
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
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'Description',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  widget.product.description,
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text(
                                'Ingredients',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5,),
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  widget.product.ingredients,
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 10),
                              child: Container(
                                height: 60,
                                width: 17/100 * SizeConfig.screenWidth,
                                decoration: BoxDecoration(
                                  color: Color(0XFFE73D47).withOpacity(0.26),
                                  borderRadius: BorderRadius.circular(10.0)
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
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
                                height: 60,
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
                                      fontSize: 20,
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
            color: Colors.white,
            boxShadow: [kDefaultShadow],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30)
            )
          ),
          child: Column(
            children: [
              SvgPicture.asset('assets/svgs/addedtocart.svg', fit: BoxFit.cover,),
              SizedBox(height: 10,),
              Text(
                'Added to cart',
                style: TextStyle(
                  color: Color(0XFFE73D47),
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
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
                          'View cart and Check out',
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
                      Navigator.pop(context);
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
                          'Continue shopping',
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
        );
      }
  );
}

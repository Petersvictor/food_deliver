import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/models/product.dart';
import 'package:multi_ui/size_config.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'WishList',
          style: TextStyle(color: Theme.of(context).textSelectionColor, fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            ...List.generate(3, (index){
              return WishListCard(
                product: demoProducts[index],
                press: () {},
                );
            }),
          ],
        ),
      ),
    );
  }
}

class WishListCard extends StatelessWidget {
  const WishListCard({
    Key key, this.product, this.press, this.pressContainer,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback press;
  final GestureTapCallback pressContainer;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressContainer,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Container(
              height: SizeConfig.screenHeight * 0.15,
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  boxShadow: [kDefaultShadow],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Container(
                    height: SizeConfig.screenHeight * 0.15,
                    width: 118,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        ),
                        image: DecorationImage(
                            image: AssetImage(product.image),
                            fit: BoxFit.cover
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: 41,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(7.0)
                              )
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Color(0XFFFFC107),
                              ),
                              Text(
                                product.rating.toString(),
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(10),
                                    fontWeight: FontWeight.w500
                                ),
                              )
                            ],
                          ),
                        )
                      ],
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
                              width: getProportionateScreenWidth(111),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.title,
                                    style: TextStyle(
                                        fontSize: SizeConfig.screenWidth * 0.04,
                                        fontWeight: FontWeight.w600,
                                        color: Theme.of(context).textSelectionColor
                                    ),
                                  ),
                                  Text(
                                    'Italian Chaffeur',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: SizeConfig.screenWidth * 0.032,
                                        color: Theme.of(context).hintColor
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: getProportionateScreenWidth(50)),
                            Icon(Icons.close, color: Theme.of(context).textSelectionColor,),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '\$ ${product.price}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: SizeConfig.screenWidth * 0.05,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 110,
            right: 50,
            child: GestureDetector(
              onTap: press,
              child: Container(
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenHeight(40),
                decoration: BoxDecoration(
                  color: Color(0XFFE73D47),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Icon(
                  Icons.add_shopping_cart,
                  size: 15,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/models/product.dart';
import 'package:multi_ui/size_config.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key key, this.discounted = false, this.press, this.product,
  }) : super(key: key);

  final bool discounted;
  final GestureTapCallback press;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: getProportionateScreenWidth(160),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: press,
              child: Container(
                height: getProportionateScreenHeight(143),
                width: getProportionateScreenWidth(160),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7),
                      topRight: Radius.circular(7),
                      bottomRight: Radius.circular(7),
                    ),
                    boxShadow: [kDefaultShadow],
                    image: DecorationImage(
                        image: AssetImage(product.image),
                        fit: BoxFit.cover
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (discounted == true)
                      Container(
                        height: getProportionateScreenHeight(23),
                        width: getProportionateScreenWidth(38),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7)
                            )
                        ),
                        child: Center(
                            child: Text(
                              product.discount.toString() + '%',
                              style: TextStyle(
                                  color: Colors.white
                              ),
                            )),
                      ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            padding: EdgeInsets.all(2),
                            height: getProportionateScreenHeight(23),
                            width: getProportionateScreenWidth(50),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(7),
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: getProportionateScreenWidth(16),
                                  color: Color(0XFFFFC107),
                                ),
                                Text(
                                  product.rating.toString(),
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(12),
                                      fontWeight: FontWeight.w600,
                                    color: kTextColorLight
                                  ),
                                )
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenWidth(7),),
            Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(100),
                  child: Text(
                    product.title,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.04,
                        fontWeight: FontWeight.w500,
                      color: Theme.of(context).textSelectionColor
                    ),
                  ),
                ),
                Spacer(),
                Text(
                  '\$' + product.price.toString(),
                  style: TextStyle(
                      fontSize: SizeConfig.screenWidth * 0.04,
                      fontWeight: FontWeight.bold,
                    color: Theme.of(context).textSelectionColor
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
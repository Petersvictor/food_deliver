import 'package:flutter/material.dart';
import 'package:multi_ui/fooddel/models/reviews.dart';
import 'package:multi_ui/size_config.dart';

class ReviewBox extends StatelessWidget {
  const ReviewBox({
    Key key, @required this.press,
  }) : super(key: key);

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        // height: SizeConfig.screenHeight *0.1,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ...List.generate(5, (index) {
                      return Icon(
                        Icons.star,
                        color: Color(0XFFFFC107),
                      );
                    }),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '36 Reviews',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: SizeConfig.screenWidth * 0.04,
                          color: Theme.of(context).textSelectionColor
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                ...List.generate(4, (index) {
                  return ReviewUserBox(
                    reviews: demoReviews[index],
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReviewUserBox extends StatelessWidget {

  ReviewUserBox({this.reviews});

  final Reviews reviews;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: getProportionateScreenWidth(35),
        width: getProportionateScreenWidth(35),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Theme.of(context).hintColor),
            image: DecorationImage(
                image: AssetImage(reviews.image),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
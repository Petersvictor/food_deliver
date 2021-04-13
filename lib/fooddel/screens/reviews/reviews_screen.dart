import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/models/reviews.dart';
import 'package:multi_ui/size_config.dart';

class ReviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Reviews',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ...List.generate(demoReviews.length, (index){
              return ReviewScreenBox(
                reviews: demoReviews[index],);
            })
          ],
        ),
      ),
    );
  }
}

class ReviewScreenBox extends StatelessWidget {
  const ReviewScreenBox({
    Key key, this.reviews,
  }) : super(key: key);

  final Reviews reviews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Container(
                    height: SizeConfig.screenWidth * 0.1,
                    width: SizeConfig.screenWidth * 0.1,
                    decoration: BoxDecoration(
                      border: Border.all(color: kPrimaryColor),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(reviews.image),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(width: 5,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reviews.name,
                        style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.037,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).textSelectionColor
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: getProportionateScreenWidth(16),
                            color: Color(0XFFFFC107),
                          ),
                          Text(
                            reviews.rating.toString(),
                            style: TextStyle(
                                fontSize: SizeConfig.screenWidth * 0.03,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).hintColor
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
              Spacer(),
              Text(
                reviews.date,
                style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.037,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).hintColor
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.screenWidth * 0.02,),
          Text(
            reviews.review,
            style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.03,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).hintColor
            ),
          ),
        ],
      ),
    );
  }
}

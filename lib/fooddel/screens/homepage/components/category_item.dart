import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key, @required this.title,
    @required this.icon,
  }) : super(key: key);

  final String title, icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: getProportionateScreenHeight(60),
            width: getProportionateScreenHeight(60),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: Theme.of(context).textSelectionColor
                )
            ),
            child: SvgPicture.asset(icon, height: getProportionateScreenHeight(20), width: getProportionateScreenHeight(20), color: Theme.of(context).textSelectionColor,),
          ),
          SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.03,
                fontWeight: FontWeight.w500,
              color: Theme.of(context).textSelectionColor
            ),
          )
        ],
      ),
    );
  }
}
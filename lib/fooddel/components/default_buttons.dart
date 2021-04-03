import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key, this.text, this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: press,
          child: Container(
            height: getProportionateScreenHeight(60),
            width: SizeConfig.screenWidth * 0.75,
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40)
                )
            ),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    fontSize: SizeConfig.screenWidth * 0.045,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class ReversedDefaultButton extends StatelessWidget {
  const ReversedDefaultButton({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GestureDetector(
          onTap: press,
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
                text,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
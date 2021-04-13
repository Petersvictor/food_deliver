import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/size_config.dart';

class PersonalInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Personal information',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30),),
            PersonalInfoDiv(
              title: 'Personal Information',
              press: () {},
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            PersonalInfoBox(
              title: 'Full name',
              desc:'Ada Adejoke Hassan',
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            PersonalInfoBox(
              title: 'Mobile number',
              desc:'32679876435',
            ),
            SizedBox(height: getProportionateScreenHeight(30),),
            PersonalInfoDiv(
              title: 'Password',
              press: () {
                addMediaModal(context);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            PersonalInfoBox(
              title: 'Password',
              desc:'*************',
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalInfoBox extends StatelessWidget {
  const PersonalInfoBox({
    Key key, this.title, this.desc,
  }) : super(key: key);

  final String title, desc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        // height: SizeConfig.screenHeight *0.08,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.screenWidth * 0.032,
                color: Theme.of(context).textSelectionColor

              ),
            ),
            Text(
              desc,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.screenWidth * 0.04,
                color: Theme.of(context).textSelectionColor
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PersonalInfoDiv extends StatelessWidget {
  const PersonalInfoDiv({
    Key key, this.title, this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: SizeConfig.screenWidth * 0.05,
                fontWeight: FontWeight.w500
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text(
              'Change',
              style: TextStyle(
                  fontSize: SizeConfig.screenWidth * 0.04,
                  fontWeight: FontWeight.w500,
                color: kPrimaryColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}

addMediaModal(context) {
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController = TextEditingController();
  TextFormField buildOldPasswordFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      controller: oldPasswordController,
      decoration: InputDecoration(
        hintText: 'Enter your current password',
        labelText: 'Current password',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        focusColor: kPrimaryColor,
        suffixIcon: Icon(Icons.lock_outline),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
          borderSide: BorderSide(color: Theme.of(context).hintColor),
          gapPadding: 0,
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
  TextFormField buildNewPasswordFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: newPasswordController,
      decoration: InputDecoration(
        hintText: 'Enter your new password',
        labelText: 'New password',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        focusColor: kPrimaryColor,
        suffixIcon: Icon(Icons.lock_outline),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
          borderSide: BorderSide(color: Theme.of(context).hintColor),
          gapPadding: 0,
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
  TextFormField buildConfirmNewPasswordFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: confirmNewPasswordController,
      decoration: InputDecoration(
        hintText: 'Confirm new password',
        labelText: 'Confirm Password',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        suffixIcon: Icon(Icons.lock_outline),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
          borderSide: BorderSide(color: Theme.of(context).hintColor),
          gapPadding: 0,
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

  showModalBottomSheet<dynamic>(
      // isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          // height: SizeConfig.screenHeight /1.7,
          padding: EdgeInsets.symmetric(vertical: 15,),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [kDefaultShadow],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Change password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.screenWidth * 0.05
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    buildOldPasswordFormField(context),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    buildNewPasswordFormField(context),
                    SizedBox(height: getProportionateScreenHeight(20),),
                    buildConfirmNewPasswordFormField(context),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              DefaultButton(
                text: 'Save password',
                press: () {},
              )
            ],
          ),
        );
      }
  );

}

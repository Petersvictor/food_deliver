import 'package:flutter/material.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/fooddel/login_screen/login_screen.dart';
import 'package:multi_ui/size_config.dart';
import 'package:multi_ui/constants.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign up',
          style: TextStyle(color: Theme.of(context).textSelectionColor,
            fontWeight:FontWeight.w400,
            fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: Column(
                  children: [
                    Text(
                      'Register Account',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: SizeConfig.screenWidth * 0.07,
                          color: Theme.of(context).textSelectionColor
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth / 1.5,
                      child: Text(
                        'Complete your details to create an account  or continue using your google account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.screenWidth * 0.04,
                            color: Theme.of(context).hintColor
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    buildEmailFormField(context),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    buildPasswordFormField(context),
                    SizedBox(height: getProportionateScreenHeight(30),),
                    buildConfirmPasswordFormField(context),
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(40),),
              DefaultButton(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                text: 'Sign Up',
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              ReversedDefaultButton(text: 'Continue with Google', press: () {}),
              SizedBox(height: getProportionateScreenHeight(20),),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "SignIn",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  TextFormField buildEmailFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        suffixIcon: Icon(Icons.mail_outline),
        labelText: 'Email',
        hintStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        labelStyle: TextStyle(
            fontSize: SizeConfig.screenWidth * 0.032
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.055, vertical: SizeConfig.screenWidth * 0.055),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(30)),
            borderSide: BorderSide(color: Theme.of(context).hintColor),
            gapPadding: 0
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
  TextFormField buildPasswordFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: passwordController,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
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
  TextFormField buildConfirmPasswordFormField(context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: confirmPasswordController,
      decoration: InputDecoration(
        hintText: 'Enter your password',
        labelText: 'Password',
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

}



import 'package:flutter/material.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/screens/homepage/homepage.dart';
import 'package:multi_ui/fooddel/screens/signup_screen/signup_screen.dart';
import 'package:multi_ui/size_config.dart';
import 'package:multi_ui/constants.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Log in',
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
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: getProportionateScreenHeight(25)),
                child: Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.07,
                        color: Theme.of(context).textSelectionColor
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth / 1.5,
                      child: Text(
                        'Signin with your email and password or signin using your google account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.screenWidth * 0.04,
                          color: Theme.of(context).hintColor
                        ),
                      ),
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    buildEmailFormField(context),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    buildPasswordFormField(context),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot password?',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.screenWidth * 0.04,
                            decoration: TextDecoration.underline,
                            color: Theme.of(context).hintColor
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(40)),
              DefaultButton(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                text: 'Signin',
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              ReversedDefaultButton(
                text: 'Continue In with Google',
                press: () {},
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.04,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).textSelectionColor
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: SizeConfig.screenWidth * 0.04,
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
        suffixIcon: Icon(Icons.lock_outline),
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

}





import 'package:flutter/material.dart';
import 'package:multi_ui/size_config.dart';
import 'package:multi_ui/constants.dart';

class AddAddress extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildEmailFormField(),
          buildEmailFormField()
        ],
      ),
    );
  }
  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'Enter your email',
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.mail_outline,),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
            borderSide: BorderSide(color: kPrimaryColor),
            gapPadding: 0
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
            borderSide: BorderSide(color: kTextColor),
            gapPadding: 0
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
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



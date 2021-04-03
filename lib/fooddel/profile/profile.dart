import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/my_orders/my_orders.dart';
import 'package:multi_ui/fooddel/payment_methods/payment_method.dart';
import 'package:multi_ui/fooddel/personal_information/personal_information.dart';
import 'package:multi_ui/fooddel/shipping_addresses/shipping_addresses.dart';
import 'package:multi_ui/size_config.dart';
import 'package:multi_ui/theme.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _light = false;

  _switchFunction(bool value) {
    setState(() {
      _light = value;
    });
  }

  @override
  Widget build(BuildContext context) {

    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Theme.of(context).textSelectionColor, fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  children: [
                    Container(
                      height: getProportionateScreenHeight(70),
                      width: getProportionateScreenHeight(70),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/etty-fidele-J1jYLLlRpA4-unsplash.jpg'),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Matilda Brown',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.screenWidth * 0.05,
                            color: Theme.of(context).textSelectionColor
                          ),
                        ),
                        // SizedBox(height: 5,),
                        Text(
                          'matildabrown@mail.com',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.screenWidth * 0.035,
                            color: Theme.of(context).hintColor
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30),),
              ProfileItem(
                title: 'My Orders',
                desc: '5 orders this month',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders()));
                },
              ),
              ProfileItem(
                title: 'Shipping addresses',
                desc: '2 ddresses added',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShippingAddresses()));
                },
              ),
              ProfileItem(
                title: 'Payment methods',
                desc: '2 payments methods saved',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethods()));
                },
              ),
              ProfileItem(
                title: 'Settings',
                desc: 'Personal info, password',
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInformation()));
                },
              ),
              SwitchListTile(
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.043
                  ),
                ),
                value: _light,
                activeColor: kPrimaryColor,
                onChanged: _switchFunction,
              ),
              Divider(
                color: Color(0XFFC4C4C4),
                thickness: 0.7,
              ),
              SizedBox(height: 15,),
              SwitchListTile(
                title: Text(
                  'Dark Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.043
                  ),
                ),
                value: themeProvider.isDarkMode,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  final provider= Provider.of<ThemeProvider>(context, listen: false);
                  provider.toggleTheme(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key key,
    @required this.title,
  @required this.desc,
  @required this.press,
  }) : super(key: key);

  final String title, desc;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: press,
      child: Padding(
        padding:  EdgeInsets.only(bottom: 20),
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: SizeConfig.screenWidth * 0.043,
                          ),
                        ),
                        // SizedBox(height: 5,),
                        Text(
                          desc,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: SizeConfig.screenWidth * 0.029,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    )
                  ],
                ),
              ),
              Divider(
                color: Color(0XFFC4C4C4),
                thickness: 0.7,
              )
            ],
          ),
        ),
      ),
    );
  }
}

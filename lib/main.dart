import 'package:flutter/material.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/fooddel/unboard/unboard_screen.dart';
import 'package:multi_ui/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multi_ui/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: lightThemeData(context),
          darkTheme: darkThemeData(context),
          home: MyHomePage(),
        );
      },

    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Selector(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UnboardScreen()));
                },
                title: 'Food Delivery App',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Selector extends StatelessWidget {
  const Selector({
    Key key,
    @required this.press,
    @required this.title,
  }) : super(key: key);

  final GestureTapCallback press;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: [kDefaultShadow],
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenWidth(24)
              ),
            ),
          ),
        ),
      ),
    );
  }
}

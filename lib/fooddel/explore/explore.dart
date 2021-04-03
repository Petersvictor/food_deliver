import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/fooddel/components/default_buttons.dart';
import 'package:multi_ui/fooddel/homepage/homepage.dart';
import 'package:multi_ui/size_config.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Explore',
          style: TextStyle(color: Theme.of(context).textSelectionColor, fontWeight:FontWeight.w400, fontSize: SizeConfig.screenWidth * 0.04,),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Theme.of(context).textSelectionColor),
      ),
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20),),
            SearchBox(
              press: () {
                addMediaModal(context);
              },
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Search',
                    style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                      fontSize: SizeConfig.screenWidth* 0.05,
                    ),
                  ),
                  Text(
                    'Clear',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: SizeConfig.screenWidth * 0.04
                    ),
                  )
                ],
              ),
            ),
            RecentSearchItem(item: 'Salad meal',),
            RecentSearchItem(item: 'Jollof Rice',),
            RecentSearchItem(item: 'Hamburger',)
          ],
        ),
      ),
    );
  }
}

class RecentSearchItem extends StatelessWidget {
  const RecentSearchItem({
    Key key,
    @required this.item,
  }) : super(key: key);

  final String item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Icon(
            Icons.access_time_rounded,
            size: 20,
          ),
          SizedBox(width: 15,),
          Text(
            item,
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.04,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).hintColor
            ),
          ),
          Spacer(),
          Icon(Icons.close)
        ],
      ),
    );
  }
}

addMediaModal(context) {
  showModalBottomSheet<dynamic>(
    isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: SizeConfig.screenHeight /1.5,
          padding: EdgeInsets.symmetric(vertical: 15),
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
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.screenWidth * 0.05
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close,
                      size: 30,
                    ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Category',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.04
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterCategoryItem(type: 'Food',),
                  FilterCategoryItem(type: 'Restaurants', selected: true,),
                  FilterCategoryItem(type: 'Chefs',)
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(15),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Types',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.screenWidth * 0.04
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15),),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: getProportionateScreenHeight(120),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 10.0, mainAxisSpacing: 15.0,
                      childAspectRatio: 2 ),
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return FilterTypeItem(
                      );
                    },
                  ),
                ),
              ),

              DefaultButton(
                press: () {},
                text: 'Filter',
              ),
              SizedBox(height: getProportionateScreenHeight(20),),
              Row(
                children: [
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: getProportionateScreenWidth(60),
                      width: 75/100 * SizeConfig.screenWidth,
                      decoration: BoxDecoration(
                          color: Color(0XFF222433),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40)
                          )
                      ),
                      child: Center(
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                              fontSize: getProportionateScreenWidth(19),
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }
  );
}

class FilterCategoryItem extends StatelessWidget {
  const FilterCategoryItem({
    Key key,
    this.selected = false,
    @required this.type,
  }) : super(key: key);

  final bool selected;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        // height: getProportionateScreenWidth(20),
        // width: SizeConfig.screenWidth * 0.26,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? kPrimaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: selected ? Colors.transparent : Theme.of(context).hintColor
          )
        ),
        child: Center(
          child: Text(
            type,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: selected ? Colors.white : Theme.of(context).hintColor,
                fontSize: SizeConfig.screenWidth * 0.04,
            ),
          ),
        ),
      ),
    );
  }
}

class FilterTypeItem extends StatelessWidget {
  const FilterTypeItem({
    Key key,  this.isSelected = false, this.press, this.textColor, this.containerColor,
  }) : super(key: key);

  final bool isSelected;
  final GestureTapCallback press;
  final Color textColor, containerColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 40,
        width: 80,
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(31),
          border: Border.all(
            color: Theme.of(context).hintColor,
          )
        ),
        child: Center(
          child: Text(
            'Pizza',
            style: TextStyle(
              fontSize: SizeConfig.screenWidth * 0.04,
              fontWeight: FontWeight.w500 ,
              color: Theme.of(context).hintColor,
            ),
          ),
        ),
      ),
    );
  }
}

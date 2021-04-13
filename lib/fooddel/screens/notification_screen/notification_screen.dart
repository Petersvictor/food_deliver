import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:multi_ui/constants.dart';
import 'package:multi_ui/fooddel/components/customNavBar.dart';
import 'package:multi_ui/size_config.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
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
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Clear all',
                      style: TextStyle(
                        color: Color(0xFF1987FB),
                        fontSize: getProportionateScreenWidth(17)
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(15),),
              NotificationItem(
                title: 'We know that — for children AND adults — learning is most effective when it is',
                date: 'Aug 12, 2020 at 12:08 PM',
                isRead: false
              ),
              NotificationItem(
                  title: 'We know that — for children AND adults — learning is most effective when it is',
                  date: 'Aug 12, 2020 at 12:08 PM',
              ),
              NotificationItem(
                title: 'We know that — for children AND adults — learning is most effective when it is',
                date: 'Aug 12, 2020 at 12:08 PM',
              ),
              NotificationItem(
                title: 'We know that — for children AND adults — learning is most effective when it is',
                date: 'Aug 12, 2020 at 12:08 PM',
              ),
              NotificationItem(
                title: 'We know that — for children AND adults — learning is most effective when it is',
                date: 'Aug 12, 2020 at 12:08 PM',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    Key key, this.isRead = true,
    @required this.title,
    @required this.date,
  }) : super(key: key);

  final bool isRead;
  final String title, date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.notifications_active
              ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth /1.3,
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(16),
                        fontWeight: isRead ? FontWeight.w100 : FontWeight.bold,
                        color: isRead ? Theme.of(context).hintColor :  Theme.of(context).textSelectionColor
                      ),
                    ),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    date,
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(14),
                      color: Theme.of(context).hintColor
                    ),

                  ),
                ],
              ),
              Spacer(),
              if (isRead == false)
              Container(
                height: 10,
                  width: 10,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  shape: BoxShape.circle
                ),
              )
            ],
          ),
        ),
        // SizedBox(width: 20,),
        Divider(color: Theme.of(context).textSelectionColor.withOpacity(0.4),)
      ],
    );
  }
}

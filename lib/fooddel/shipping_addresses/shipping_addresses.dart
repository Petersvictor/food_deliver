import 'package:flutter/material.dart';
import 'package:multi_ui/size_config.dart';
import 'package:multi_ui/fooddel/shipping_addresses/add_address.dart';

class ShippingAddresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Shipping addresses',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          children: [
           AddressBox(
             address: '4517 Washington Ave. Manchester, Kentucky 39495',
             isSelected: true,
           ),
            AddressBox(address: '3 Newbridge Court Chino Hills, CA 91709, United States',),
            AddressBox(address: '51 Riverside Chino Hills, CA 91709, United States',),
           SizedBox(height: 20,),
           Padding(
             padding:  EdgeInsets.only(right: 15),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => AddAddress()));
                  },
                   child: Container(
                     width: 55,
                     height: 50,
                     decoration: BoxDecoration(
                       color: Color(0XFFE73D47).withOpacity(0.21),
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: Icon(
                       Icons.add,
                       color: Color(0XFFE73D47),
                     ),
                   ),
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}

class AddressBox extends StatelessWidget {
  const AddressBox({
    Key key,
    @required this.address,
    this.isSelected = false,
  }) : super(key: key);

  final String address;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        width: double.infinity,
        height: SizeConfig.screenHeight * 0.17,
        decoration: BoxDecoration(
          color: Color(0XFFECECEC),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFE73D47)
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: SizeConfig.screenWidth / 1.6,
              child: Text(
                address,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height:10),
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0XFF222433) : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: isSelected ? Colors.transparent : Color(0XFF222433)
                    )
                  ),
                  child:  isSelected ? Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12,
                  ) : Container(),
                ),
                SizedBox(width: 5,),
                Text(
                  'Use as the shipping address',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class DeliveryMethods {
  final String title, subTitle, amount;
  final IconData icon;

  DeliveryMethods({
    this.title,
    this.amount,
    this.subTitle,
    this.icon,
  });
}

List <DeliveryMethods> deliveryMethods = [deliveryMethod1, deliveryMethod2];

DeliveryMethods deliveryMethod1 = DeliveryMethods(
  title: 'Deliver to my address',
  subTitle: 'Item will be delivered to your address',
  amount: '\$2.30',
);

DeliveryMethods deliveryMethod2 = DeliveryMethods(
  title: 'Pick up by self',
  subTitle: 'Pick up your item at the vendor office',
  amount: '\$1.09',
);





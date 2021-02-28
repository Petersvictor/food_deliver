import 'package:flutter/material.dart';

class VisitTypes {
  final String icon, name;


  VisitTypes({
    this.icon,
    this.name,
  });
}

List <VisitTypes> visits = [visit1, visit2, visit3];

VisitTypes visit1 = VisitTypes(
  icon: 'Messaging',
  name: '\$5',
);

VisitTypes visit2 = VisitTypes(
  icon: 'Voice call',
  name: '\$15',
);

VisitTypes visit3 = VisitTypes(
  icon: 'Video Call',
  name: '\$30',
);




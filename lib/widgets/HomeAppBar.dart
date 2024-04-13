// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:badges/badges.dart' as CustomBadge;
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(children: [
        Icon(
          Icons.sort,
          size: 30,
          color: Color(0xFF4C53A5),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
          ),
          child: Text(
            "SELLOUT SHOP",
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4C53A5),
            ),
          ),
        ),
        Spacer(),
        CustomBadge.Badge(
          badgeStyle: CustomBadge.BadgeStyle(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
             ),
             badgeContent: Text('3',
             style: TextStyle(
              color: Colors.white,
             ),
             ),
          child: InkWell(
            onTap: (){},
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 35,
              color: Colors.blueAccent,
              ),
          ),
        )
      ]),
    );
  }
}

// ignore: unused_import
// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_app/widgets/CategoriesWidget.dart';
import 'package:my_app/widgets/HomeAppBar.dart';
import 'package:my_app/widgets/ItemsWidget.dart';


class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        HomeAppBar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top:15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(children: [
            // Search Widget
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search item...'
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(
                      Icons.search_rounded,
                      size: 27,
                      color: Colors.blueAccent,
                  ),
              ],
              ),
            ),

          // Categories widget
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),

            // CATEGORIES WIDGET
            CategoriesWidget(),

            // ITEMS WIDGET
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 10,
                
              ),
              child: Text(
                'Best sales',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
            ),

            // Items Widget
            ItemsWidget(),
          ],
          ),
        ),
      ],),
    );
  }
}
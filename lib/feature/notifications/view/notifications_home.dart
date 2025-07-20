
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications  extends StatelessWidget{
  static const   String routeName='Notifications';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text("توصيل الطلب الى ") ,
          Row(
            children: [
              Text(" موقع الزبون "),


            ],
          ) ,

      
        ],)
      ),
    );
  }

}
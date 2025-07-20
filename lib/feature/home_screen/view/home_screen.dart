
import 'package:ams_restaurant/feature/notifications/view/notifications_home.dart';
import 'package:ams_restaurant/feature/offers/view/offers_home.dart';
import 'package:ams_restaurant/feature/profile/view/profile_home.dart';
import 'package:ams_restaurant/shared/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen  extends StatefulWidget{
static const   String routeName='HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> type=[
    Notifications(),
    Offers(),
    Profile(),
  ];

  int selectItem=0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(

     body: type[selectItem],
       bottomNavigationBar: BottomNavigationBar(
           iconSize: 30,
           showSelectedLabels: false,
          showUnselectedLabels:false ,
          backgroundColor: Colors.black,
           selectedItemColor: AppTheme.primary,
           unselectedItemColor: Colors.white,
           onTap: (item){
             selectItem=selectItem=item;

             setState(() {

             });
           },
           currentIndex: selectItem,
           items: [
             BottomNavigationBarItem(icon: Icon(Icons.notification_add, ),label: "Notification"),
             BottomNavigationBarItem(icon: Icon(Icons.list_alt_sharp, ),label: "list"),
             BottomNavigationBarItem(icon: Icon(Icons.person, ),label: "person"),

           ])


   );

  }

}
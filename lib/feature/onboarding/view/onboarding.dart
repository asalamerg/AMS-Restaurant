
import 'package:ams_restaurant/feature/authentication/view/login.dart';
import 'package:ams_restaurant/feature/onboarding/model/onboarding_model.dart';
import 'package:ams_restaurant/shared/app_theme.dart';
import 'package:ams_restaurant/shared/default_button.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget{
  static const String routeName="Onboarding";

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController=PageController();
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: PageView.builder(
        controller: pageController,
        onPageChanged: (index){

           setState(() {
             _currentIndex=index;
           });
        },
        itemBuilder: (context,index)=>Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
           Text("Food Delivery" ,style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
          Image.asset(onboardingList[index].imageUrl,),
          Text(onboardingList[index].title,style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),) ,
          SizedBox(height: 30,),
          Container(
              margin: EdgeInsets.all(20),
              child: Text(onboardingList[index].body ,style: TextStyle(fontSize:  16 , color: Colors.grey ,),textAlign: TextAlign.center,)) ,
            SizedBox(height: 30,),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [


               ...List.generate(onboardingList.length, (index) {
                 bool isActive = index == _currentIndex;
                 return AnimatedContainer(
                   duration: Duration(milliseconds: 300),
                   width: isActive ? 20 : 10,
                   height: isActive ? 12 : 10,
                   margin: EdgeInsets.symmetric(horizontal: 4),
                   decoration: BoxDecoration(
                     color: isActive ? AppTheme.primary : Colors.grey,
                     borderRadius: BorderRadius.circular(10),
                   ),

                 );
               }),



           ],),
           SizedBox(height: 30,),


          DefaultButton(
            onPressed: () {
              if (_currentIndex < onboardingList.length - 1) {
                pageController.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              } else {
                Navigator.of(context).pushNamed(LoginScreen.routeName);
              }
            },
            title: "Continue",
          ),

          SizedBox(height: 20,),

           DefaultButton(onPressed: (){
             Navigator.of(context).pushNamed(LoginScreen.routeName);
           } , title: "Skip") ,
        ],),
       itemCount: 3,
      ),
    );
  }

  List<OnboardingModel> onboardingList = [
    OnboardingModel(
      imageUrl: "assets/image/food1.png",
      title: 'Order Online',
      body: 'اطلب وجبتك المفضلة بكل سهولة من تطبيق، واستمتع بتجربة طلب مريحة وسريعة من منزلك.',
    ),
    OnboardingModel(
      imageUrl: 'assets/image/food2.png',
      title: 'Fast Delivery',
      body: 'توصيل سريع وآمن إلى باب منزلك! نضمن لك استلام وجباتك ساخنة وطازجة في أقل وقت ممكن.',
    ),
    OnboardingModel(
      imageUrl: 'assets/image/food3.png',
      title: 'Your Choice',
      body: 'اختر من بين مجموعة متنوعة من الأطباق الشهية والمأكولات العالمية. كل ما تشتهيه متوفر لدينا!',
    ),
  ];

}
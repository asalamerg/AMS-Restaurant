import 'package:ams_restaurant/feature/authentication/view/register.dart';
import 'package:ams_restaurant/feature/home_screen/view/home_screen.dart';
import 'package:ams_restaurant/shared/app_theme.dart';
import 'package:ams_restaurant/shared/default_button.dart';
import 'package:ams_restaurant/shared/text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
 static const String routeName="LoginScreen";
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            Image.asset("assets/image/splash.png" , height: 240, width:  336, fit: BoxFit.fill,) ,
            DefaultTextFormField(title: 'email', controller: emailController,),
            DefaultTextFormField(title: 'password ', controller: passwordController,),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1 ,),

            DefaultButton(onPressed: (){
                  Navigator.of(context).pushNamed(HomeScreen.routeName);
            }, title: 'Login ',),
            SizedBox(height: 30,),

            InkWell(
              onTap: (){
                Navigator.of(context).pushNamed(RegisterScreen.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27),
                child: Text("New user? Register now and start your experience." ,style: TextStyle(color: Colors.white , fontSize: 20 ),),
              ),
            )

          ],
        ),
      ),
    );
  }
}
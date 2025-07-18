
import 'package:ams_restaurant/feature/home_screen/view/home_screen.dart';
import 'package:ams_restaurant/shared/app_theme.dart';
import 'package:ams_restaurant/shared/default_button.dart';
import 'package:ams_restaurant/shared/text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget{
  static const String routeName="RegisterScreen";
  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(backgroundColor: AppTheme.primary, foregroundColor: Colors.white,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            Image.asset("assets/image/splash.png" , height: 240, width:  336, fit: BoxFit.fill,) ,
            DefaultTextFormField(title: 'name', controller: nameController,),
            DefaultTextFormField(title: 'email', controller: emailController,),
            DefaultTextFormField(title: 'password ', controller: passwordController,),

            SizedBox(height: MediaQuery.of(context).size.height * 0.1 ,),

            DefaultButton(onPressed: () {

              Navigator.of(context).pushNamed(HomeScreen.routeName);

            }, title: 'Register  ',),



          ],
        ),
      ),
    );
  }
}
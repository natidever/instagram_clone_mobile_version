import 'package:flutter/material.dart';
import 'package:instagram_clone/colors.dart';
import 'package:instagram_clone/feature/presentation/pages/credential/singuppages/password.dart';
import 'package:instagram_clone/feature/presentation/widget/button_widget.dart';
import 'package:instagram_clone/feature/presentation/widget/form_widget.dart';

class UsernamePage extends StatefulWidget {
  const UsernamePage({super.key});

  @override
  State<UsernamePage> createState() => _UsernamePageState();
}

class _UsernamePageState extends State<UsernamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
             children: <Widget>[
              //chose user name
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Choose username",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    color: primaryColor
                  ),
                ),
              ),
              
               verticalSpace(20),
               //you can  change it
              
               Text(
                "You can always change it later",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
               ),
               verticalSpace(30),
               //Textfield
               SizedBox(
                height: 40,
                 child: FormWidget(
                  
                  checkPassword: false,
                  hintText: "Username",

                 ),
               ),
               verticalSpace(20),

               ButtonWidget(
                tapListner: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PasswordPage()));
                },
                color: blueColor,
                buttonText: "Next",
                borderRadius: BorderRadius.circular(6),
               ),
               
             
             ],
          
          ),
        ),
      ),
    );
  }
}
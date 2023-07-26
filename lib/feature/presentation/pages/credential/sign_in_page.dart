import 'package:flutter/material.dart';
import 'package:instagram_clone/colors.dart';
import 'package:instagram_clone/feature/presentation/widget/button_widget.dart';
import 'package:instagram_clone/feature/presentation/widget/form_widget.dart';
class SignInPage extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        
        body: Center(
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0,vertical:10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 0,vertical: 50),
              child: Column(
              
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                  //logo
                 Image.asset(
                 'images/logo4.png',
                 width:50,
                 ),
                 verticalSpace(110),
                    
                 //form
                    
                 FormWidget(
                  hintText: 'Email',
                  checkPassword: false,
                 ),
                 verticalSpace(10),
                    
                 FormWidget(
                  hintText: 'Password',
                  checkPassword: true,
                 ),
                 verticalSpace(10),
            
            
            
                 verticalSpace(10),
                 //button
                 ButtonWidget(
                  color: blueColor,
                  buttonText: 'Sign in',
                  tapListner: (){},
                 ),
                 verticalSpace(10),
                 Text('Forgotten password?'),
                Flexible(
                  flex: 3,
                  child: Container(),
                ),
                
                ButtonWidget(
                  color: Colors.transparent,
                  buttonText: 'Create new account',
                  borderColor: Color.fromARGB(255, 17, 26, 161),
    
                )
                
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
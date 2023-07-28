import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/colors.dart';

class MainPage extends StatefulWidget {


 
 





  @override
  State<MainPage> createState() => _MainPageState();
}



 

   



class _MainPageState extends State<MainPage> {

    int _currentPage=0;
   late PageController pageController;
  

  @override
  void initState() {
    pageController=PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }


void goTo(int index){
  pageController.jumpToPage(index);
}

 void onPageChange(int index){
   _currentPage=index;
 }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:backgroundColor,
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: backgroundColor,
        onTap: goTo,
        items: [

               BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: primaryColor,),label: ""),
               BottomNavigationBarItem(icon: Icon(Icons.search,color: primaryColor,),label: ""),
               BottomNavigationBarItem(icon: Icon(Icons.add_circle,color: primaryColor,),label: ""),
               BottomNavigationBarItem(icon: Icon(Icons.favorite,color: primaryColor,),label: ""),
               BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: primaryColor,),label: ""),



      ]),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChange,
        children: [
          Center(child: Text("home",style: TextStyle(color: primaryColor),),),
          Center(child: Text("Search",style: TextStyle(color: primaryColor),),),
          Center(child: Text("Post",style: TextStyle(color: primaryColor),),),
          Center(child: Text("Activity",style: TextStyle(color: primaryColor),),),
          Center(child: Text("Account",style: TextStyle(color: primaryColor),),),

        
      ]),

        
      
      
    );
  }
}
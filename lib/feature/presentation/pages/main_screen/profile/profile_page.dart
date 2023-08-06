import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram_clone/colors.dart';

import '../../../widget/button_widget.dart';
import '../../../widget/flexiible_button_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: backgroundColor,

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Natnael Sisay",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,

            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.add_box_outlined,color: primaryColor, size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Icon(Icons.menu,color: primaryColor, size: 30,),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage('assets/4.jpg'),
                    ),
                    verticalSpace(10),
                    Text(
                      "Natnael Sisay",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                horizontalSpace(50),
                Column(
                  children: [
                    Text(
                        "5",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    verticalSpace(15),
                    Text(
                      "Post",
                      style: TextStyle(
                        color: primaryColor,
                          fontWeight:FontWeight.bold,
                        fontSize: 18,


                      ),
                    )

                  ],
                ),

                Column(
                  children: [
                    Text(
                      "200",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    verticalSpace(15),
                    Text(
                      "Follower",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight:FontWeight.bold,
                        fontSize: 18,


                      ),
                    )

                  ],
                ),



                Column(
                  children: [
                    Text(
                      "1234",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight:FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    verticalSpace(15),
                    Text(
                      "Following",
                      style: TextStyle(
                        color: primaryColor,
                        fontWeight:FontWeight.bold,
                        fontSize: 18,


                      ),
                    )

                  ],
                ),




              ],

            ),
          ),

          verticalSpace(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlexibleButtonWidget(
                  color: Colors.white12,
                  buttonText: "Edit profile",
                  borderRadius: BorderRadius.circular(10),
                  width: 170,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),

                FlexibleButtonWidget(
                  color: Colors.white12,
                  buttonText: "Share profile",
                  borderRadius: BorderRadius.circular(10),
                  width: 170,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),



              ],
            ),
          ),
              verticalSpace(10),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: DefaultTabController(
              length: 2,
              child: TabBar(
                tabs: [
                  Tab(
                      icon:Icon( Icons.grid_on, color:primaryColor,size: 30,),



                  ),
                  Tab(
                      icon:Icon( Icons.account_box_sharp, color:primaryColor,size: 30,)
                  ),



                ],

              ),
            ),
          ),
          TabBarView(

              children: [
               Container(
                 child: Text("yes"),
               ),


                Container(
                  child: Center(child: Text("TAGGEED" ,style: TextStyle(color: Colors.white24),),

                  ),
                )
          ]

          )
    ],
      ),


    );
  }
}

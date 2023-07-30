import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import '../../../../../colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List <String> profilePicture=[
"assets/1.jpg",
"assets/2.jpg",
"assets/4.jpg",
"assets/4.jpg",
"assets/5.jpg",
"assets/6.jpg",
"assets/7.jpg",



];
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading:false,

        backgroundColor: backgroundColor,
        title:SvgPicture.asset(
          'assets/instagram_wordmark.svg',
          color: primaryColor,
          width: 60,
          height: 40,
          ),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite_border)
              ),

              IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.send)
              )
            

          ], 
          
      ),
      body: SingleChildScrollView(
          child: Row(
                children: List.generate(
          2, (index) => Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 35,
               backgroundImage: AssetImage('assets/instagramgradient1.jpg'),
 
                child: CircleAvatar(
                  
                backgroundImage: AssetImage(profilePicture[index]),
                  radius: 32,

                ),
              ),
            ),
          ))
              ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:testapp/views/pages/home/componenets/body.dart';
import 'package:testapp/views/pages/home/componenets/header_section.dart';
import 'package:testapp/views/pages/home/componenets/offre_cookis.dart';
import 'package:testapp/views/pages/home/componenets/titles_section.dart';
import 'package:testapp/lyouts/const_colors/colorsapp.dart';


class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
        body:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderSection(),

                const  SizedBox(height: 15.0,),

                  TitlesSection(),

                 const SizedBox(height:60.0,),

                  SingleChildScrollView(
                    clipBehavior: Clip.none,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: BodySection(context),
                  ),

                  const  SizedBox(height: 15.0,),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("Offres",
                       style: TextStyle(
                         letterSpacing: 1.5,
                         color: Colors.white,
                         fontSize: 30,
                         fontWeight:FontWeight.bold,
                         fontFamily: "Mulish",
                       ),
                     ),
                     TextButton(
                         onPressed: (){},
                         child: Text("See more",style: TextStyle(color: Colors.deepOrange,fontFamily: "Mulish"),)
                     ),
                   ],
                 ),

                  const  SizedBox(height: 15.0,),

                  OffreCookisSection(),
                ]),
          ),
        ),
    );
  }
}

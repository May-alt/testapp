import 'package:flutter/material.dart';

Widget TitlesSection() => Container(
 height: 80,

  child:Row(
   crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      Column(
        children: [
          Text("Cookies"
            ,style: TextStyle(
              letterSpacing: 1.5,
              color: Colors.white,
              fontSize: 30,
              fontWeight:FontWeight.bold,
              fontFamily: "Mulish",
            ),
          ),
          Text("Permium"
            ,style: TextStyle(color: Colors.deepOrange,fontSize: 25,fontWeight: FontWeight.normal,fontFamily: "Mulish"),
          ),

        ],
      ),

      TextButton(
        onPressed: (){},
        child: Text("See more",style: TextStyle(color: Colors.deepOrange,fontFamily: "Mulish"),),
      ),


    ],
  ),
    );
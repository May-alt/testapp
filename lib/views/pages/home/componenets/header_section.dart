import 'package:flutter/material.dart';

Widget HeaderSection() =>  Container(

  child:  Row(
    children: [
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/profil/profil1.png"),
              radius: 30,
            ),
            SizedBox(width: 10.0,),
            Column(
              children: [
                Text("James",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontFamily: "Mulish",
                    color: Colors.white
                  ),
                ),
                Text("Figuroa",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],),
);
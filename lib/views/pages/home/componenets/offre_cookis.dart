import 'package:flutter/material.dart';


Widget OffreCookisSection()=> Container(
  height: 100,
  padding:const EdgeInsets.only(left: 15.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(20.0),
      topRight:  Radius.circular(100.0),
      bottomLeft:  Radius.circular(20.0),
      bottomRight:  Radius.circular(100.0),
    ),
    color: Colors.white12,
  ),

  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

      CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage("assets/images/cookis2.jpeg"),
      ),

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Chocolate",
          style: TextStyle(color: Colors.white),
          ),
          Text("chips",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 08.0,),

          Row(
            children: [
              Icon(Icons.ac_unit, color: Colors.deepOrange),
              Text(
                "PREMIUM",
                style: TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
        ],
      ),

      Text("25 USD",
        style: TextStyle(color: Colors.white),
      ),
      //SizedBox(width: 10.0,),
     CircleAvatar(
       radius: 30,
       backgroundColor: Colors.white12,
       child:  CircleAvatar(
       radius: 26,
       backgroundColor: Colors.black,
       child: IconButton(
           onPressed: () {},
           icon: Icon(
             Icons.arrow_forward_outlined,
             color: Colors.white,
           )),
     ),),
    ],
  ),
);
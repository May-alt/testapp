import 'package:flutter/material.dart';
import 'package:testapp/main.dart';

class OnBordingViews extends StatefulWidget {
  const OnBordingViews({Key? key}) : super(key: key);

  @override
  State<OnBordingViews> createState() => _OnBordingViewsState();
}

class _OnBordingViewsState extends State<OnBordingViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background_one.webp"),
                fit: BoxFit.cover),),

          child: Padding(
              padding:const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  top: 150,
                  bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cookis Shop",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 90,
                      fontWeight: FontWeight.w600,
                      fontFamily: "inspiration"),
                ),

                Column(
                  children: [
                   Text("Feeling low? tack a sip of cookis",

                  style: TextStyle(
                       color: Colors.black,
                     letterSpacing: 0.7,
                     fontSize: 18,
                     fontWeight: FontWeight.w500
                   ),
                   ),

                    SizedBox(height: 20.0,),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                            return MyAppMain();
                          },),
                        );
                      },
                      child: Container(
                        width: 250,
                        padding:const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: Center(
                          child: Text(
                            "Let's start",
                            style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ]),

              ]),
          ),
        ),
      ),
    );
  }
}

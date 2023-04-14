import 'package:flutter/material.dart';
import 'package:testapp/views/pages/home/home.dart';
import 'package:testapp/views/pages/perminum/perminum.dart';
import 'package:testapp/views/pages/search/search.dart';
import 'package:testapp/lyouts/const_colors/colorsapp.dart';
import 'package:testapp/views/on_bording/on_bording.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundApp,
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          titleSpacing: 20.0,
            elevation: 0.0,
          backgroundColor: backgroundApp
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: backgroundApp,
          unselectedItemColor: Colors.grey,
          selectedItemColor:Colors.white,
          elevation: 0.0,
        )

      ),
      //home: MyAppMain(),
      home: OnBordingViews(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyAppMain extends StatefulWidget {
  const MyAppMain({Key? key}) : super(key: key);

  @override
  State<MyAppMain> createState() => _MyAppMainState();
}

class _MyAppMainState extends State<MyAppMain> {


  int currentIndex = 0 ;
  List<Widget> Screens = [
    HomeViews(),
    SearchViews(),
    PerminumViews(),
  ];
  List<String> titles = [
    "Home",
    "Search",
    "Permium",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(
          title: Text(titles[currentIndex],),
      ),

      body: Screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem( icon: Icon(Icons.home_filled),label: "Home"),
          BottomNavigationBarItem( icon: Icon(Icons.search,),label: "Search"),
          BottomNavigationBarItem( icon: Icon(Icons.roofing_outlined,),label: "Permium"),
        ],
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });

        },
      ),

    );
  }
}



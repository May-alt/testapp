import 'package:flutter/material.dart';
import 'package:testapp/models/cookis_models.dart';
import 'package:testapp/views/pages/home/home_detailler/home_detailler.dart';

Widget BodySection(context) => Container(
  clipBehavior: Clip.none,
  child: Row(
    children: cookisModels.map((e) {
      return Padding(
          padding: EdgeInsets.only(right: 20.0),
        child: SectionBodyContent(e,context),
      );
    }).toList(),
  )
);




Widget SectionBodyContent(CookisModels cookis , context) =>Container(
  height: 230,
  width: 185,
  decoration: BoxDecoration(
      color: Colors.white12,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight:  Radius.circular(20.0),
        bottomLeft:  Radius.circular(20.0),
        bottomRight:  Radius.circular(100.0),
      )
  ),

  child: Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.bottomCenter,
    children: [

      Positioned(
        top: -50,
        child: CircleAvatar(
          backgroundImage: AssetImage(cookis.image),
          radius:55,
        ),
      ),

      Container(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 10.0,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "${cookis.name}",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "${cookis.Title}",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Icon(Icons.ac_unit, color: Colors.deepOrange),
                Text(
                  "PREMIUM",
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${cookis.prix}",
                  style: TextStyle(color: Colors.white),
                ),

                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.white30,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.black,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) {
                              return DetaillerHomeViews(
                                name: cookis.name,
                                title: cookis.Title,
                                prix: cookis.prix,
                                img: cookis.image,
                              );
                            },),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    ],
  ),
);




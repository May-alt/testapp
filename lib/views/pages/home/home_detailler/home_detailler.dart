import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class DetaillerHomeViews extends StatelessWidget {

  final String name;
  final String title;
  final String prix;
  final String img;

   DetaillerHomeViews({
     Key? key,
     required this.name,
     required this.title,
     required this.prix,
     required this.img,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//hor
          children: [

            Row(
              children: [
                IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back,color: Colors.deepOrange,),
                ),
                SizedBox(width: 20.0,),
                Text(name,
                style: TextStyle(color: Colors.white),
                )
              ],
            ),

            SlideImageSection(img),

            const SizedBox(height: 20.0,),
           
           Expanded(child:  Padding(
             padding: EdgeInsets.only(left: 20.0,right: 20.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,//hor
               children: [

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [

                     Row(
                       children: [
                         Text(name,
                           style: TextStyle(color: Colors.white,fontSize: 18),
                         ),
                         SizedBox(width: 10.0,),
                         Text(title,
                           style: TextStyle(color: Colors.white,fontSize: 18),
                         ),
                       ],
                     ),

                     CircleAvatar(
                       backgroundColor: Colors.deepOrange,
                       radius: 16.0,
                       child: Icon(Icons.favorite
                       ),),

                   ],
                 ),

                 const SizedBox(height: 20.0,),

                 Text(prix,style: TextStyle(color: Colors.white),),

                 const SizedBox(height: 15.0,),

                 Text("Description :",style: TextStyle(color: Colors.deepOrange,fontSize: 20),),

                 const SizedBox(height: 15.0,),

                 Text("Nous n'avons trouvé aucun résultat pour la recherche sur : lorem ipsum. "
                     "Suivez les conseils ci-dessous ou lancez une nouvelle recherche avec d'autres termes.",
                   style: TextStyle(color: Colors.white,fontSize: 14),),


               ],
             ),
           ),),


            Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Container(
                width: 250,
                padding:const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(08.0),
                ),
                child: Center(
                  child: Text(
                    "Add to bag",
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }




  Widget SlideImageSection(img)=>Container(
    height: 300,
    child:ImageSlideshow(
      indicatorColor: Colors.blue,
      onPageChanged: (value) {
        debugPrint('Page changed: $value');
      },
      autoPlayInterval: 3000,
      isLoop: true,
      children: [
        Image.asset(
          img,
          fit: BoxFit.cover,
        ),
        Image.asset(
          img,
          fit: BoxFit.cover,
        ),
      ],
    ),
  );

}

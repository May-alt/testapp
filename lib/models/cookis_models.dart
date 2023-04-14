import 'package:flutter/material.dart';

class CookisModels{

  String name;
  String Title;
  String image;
  String prix;

  CookisModels({required this.name,required this.Title,required this.image,required this.prix,});

}

List<CookisModels> cookisModels =[
  CookisModels(name: "Chocolate", Title: "chips", image: "assets/images/cookis1.jpeg", prix: "20 USD"),
  CookisModels(name: "Oatmeal", Title: "with raisins", image: "assets/images/cookis2.jpeg", prix: "16 USD"),
  CookisModels(name: "Double", Title: "Chocolate", image: "assets/images/cookis3.jpeg", prix: "18 USD"),
];
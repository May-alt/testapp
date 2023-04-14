import 'package:flutter/material.dart';


class SearchViews extends StatefulWidget {
  const SearchViews({Key? key}) : super(key: key);

  @override
  State<SearchViews> createState() => _SearchViewsState();
}

class _SearchViewsState extends State<SearchViews> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
          child: Padding(
              padding:const EdgeInsets.all(20.0),
            child: Column(
              children: [

                 // TextFormField(
                 //    maxLines: 1,
                 //    decoration: InputDecoration(
                 //      label: Text("Search ........."),
                 //      prefixIcon: Icon(Icons.search),
                 //      suffixIcon: Icon(Icons.file_download_done_sharp)
                 //    ),
                 //  )

              ],
            ),
          ),
        ),
    );
  }
}

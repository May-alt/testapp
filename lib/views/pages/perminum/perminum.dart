import 'package:flutter/material.dart';

class PerminumViews extends StatefulWidget {
  const PerminumViews({Key? key}) : super(key: key);

  @override
  State<PerminumViews> createState() => _PerminumViewsState();
}

class _PerminumViewsState extends State<PerminumViews> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Scaffold(
        body: SafeArea(child: Text("perminum")),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Add_List_Screen extends StatefulWidget {
  const Add_List_Screen({super.key});

  @override
  State<Add_List_Screen> createState() => _Add_List_ScreenState();
}

class _Add_List_ScreenState extends State<Add_List_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('add list'),),
    );
  }
}

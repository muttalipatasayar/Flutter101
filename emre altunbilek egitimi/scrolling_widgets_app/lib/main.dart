import 'package:flutter/material.dart';
import 'package:scrolling_widgets_app/card_listtile.dart';
import 'package:scrolling_widgets_app/listview_kullanimi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListViewKullanimi(),
    );
  }
}

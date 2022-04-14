import 'package:flutter/material.dart';
import 'package:pages_transition/main.dart';
import 'package:pages_transition/pageB.dart';
import 'package:pages_transition/persons.dart';

class PageA extends StatefulWidget {
  Persons person;
  PageA({required this.person});

  @override
  State<PageA> createState() => _PageAState();
}

class _PageAState extends State<PageA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page A'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageB()));
              },
              child: Text(' Page B'),
            ),
            Text("Name : ${widget.person.name}"),
            Text("Age : ${widget.person.age}"),
            Text("Length : ${widget.person.length}"),
            Text("Single : ${widget.person.single}"),
          ],
        ),
      ),
    );
  }
}

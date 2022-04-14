import 'package:flutter/material.dart';
import 'package:pages_transition/pageA.dart';
import 'package:pages_transition/persons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                var person = Persons(name: "Muttalip", age: 29, length: 1.72, single: true);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageA(
                              person: person,
                            )));
              },
              child: Text(' Page A go'),
            ),
          ],
        ),
      ),
    );
  }
}

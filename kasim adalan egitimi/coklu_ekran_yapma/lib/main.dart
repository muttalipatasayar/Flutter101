import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Kendi Widgetim'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints contraints) {
        if (contraints.maxWidth < 600) {
          return TelefonTasarimi();
        } else {
          return TabletTasarimi();
        }
      }),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TabletTasarimi extends StatelessWidget {
  const TabletTasarimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('resimler/stevejobs@2x.png'),
          Text(
            'Steve Jobs',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

class TelefonTasarimi extends StatelessWidget {
  const TelefonTasarimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('resimler/stevejobs@1x.png'),
          Text(
            'Steve Jobs',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

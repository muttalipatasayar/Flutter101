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
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Steve Reis :) '),
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
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi / 100, bottom: ekranYuksekligi / 100),
            child: SizedBox(width: ekranGenisligi / 4, child: Image.asset("resimler/stevejobs@3x.png")),
          ),
          Text(
            "Steve Jobs",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi / 25,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: ekranGenisligi / 100, right: ekranGenisligi / 100),
            child: Text(
              'Dunyayi degistirecek insanlar, onu degistirebileceklerini dusunecek kadar cilgin olanlardir',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: ekranGenisligi / 25),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi / 100),
            child: SizedBox(
              width: ekranGenisligi / 2,
              height: ekranYuksekligi / 15,
              child: ElevatedButton(
                child: Text(
                  "KAYDET",
                  style: TextStyle(fontSize: ekranGenisligi / 25),
                ),
                onPressed: () {
                  print("ilham verildi");
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.redAccent,
                ),
              ),
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

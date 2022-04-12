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
      home: const MyHomePage(title: ''),
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
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 20),
                child: SizedBox(
                  width: ekranGenisligi / 4,
                  height: ekranYuksekligi / 6,
                  child: Image.asset("resimler/logo.png"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanici Adi",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 30),
                child: TextField(
                  obscureText: true, // girilen karakteri saklar
                  decoration: InputDecoration(
                    hintText: "Sifre",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 30),
                child: SizedBox(
                  width: ekranGenisligi / 1.2,
                  height: ekranYuksekligi / 12,
                  child: ElevatedButton(
                    child: Text(
                      'GIRIS YAP',
                      style: TextStyle(fontSize: ekranGenisligi / 25),
                    ),
                    onPressed: () {
                      print('Giris Yapildi');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.pink,
                      textStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("Yardim Yapildi");
                },
                child: Text(
                  'Yardim ?',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: ekranGenisligi / 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

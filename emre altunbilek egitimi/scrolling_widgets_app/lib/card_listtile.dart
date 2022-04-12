import 'package:flutter/material.dart';

class CardveListtileKullanimi extends StatelessWidget {
  const CardveListtileKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart ve List tile'),
      ),
      body: Center(
        child: ListView(
          reverse: true, // listenin elemanlarini tersten siralayip ekranda gosterir
          children: [
            Column(
              children: [
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
                tekListeElemani(),
              ],
            ),
            Text('Selam'),
            ElevatedButton(
              onPressed: () {},
              child: Text('buton'),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView singleChildKullan() {
    return SingleChildScrollView(
      // ekrani yukaru asagi kaydirmamizi saglar ve ekrana tasma problemini giderir
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.red, // golge rengi verdik
          elevation: 12, // golgenin belirginligini ayarladik
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // kenarlari ovallestirdik.
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.add,
              ),
            ),
            title: Text('Baslik kismi'), // baslik olusturmak icin kullaniriz
            subtitle: Text("Alt baslik kismi"), // alt baslik olusturmak icin kullaniriz
            trailing: Icon(Icons.real_estate_agent), // sag tarafa icon eklemek icin kullaniriz
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 1, // dividerin cizgi kalinligini belirledik
          height: 10,
          indent: 20, // sol taraftan bosluk birakmak icin kullandik
          endIndent: 50, // sag taraftan bosluk verir
        ),
      ],
    );
  }
}

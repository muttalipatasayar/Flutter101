import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);
  List<Ogrenci> tumOgrenciler = List.generate(
    500,
    (index) => Ogrenci(index + 1, "Ogrenci Adi ${index + 1}", "Ogrenci Soyadi ${index + 1}"),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Listesi"),
      ),
      body: buildListviewSeparated(),
    );
  }

  ListView buildListviewSeparated() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oAnkiOgrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0 ? Colors.orange.shade100 : Colors.purple.shade100,
          child: ListTile(
            onTap: () {
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.red;
                EasyLoading.instance.textColor = Colors.purple; // liste elemani tek sayi ise kirmizi olacak
              } else {
                EasyLoading.instance.backgroundColor = Colors.blue; // liste elemani cift sayi ise mavi olacak
              }
              EasyLoading.showToast(
                'Eleman tiklandi',
                duration: Duration(
                  seconds: 3,
                ),
                dismissOnTap: true, // ekranda bir yere tiklayinca kapatma islemi yapiyor
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            onLongPress: () {
              _alertDialogIslemleri(context, oAnkiOgrenci);
            },
            title: Text(oAnkiOgrenci.isim),
            subtitle: Text(oAnkiOgrenci.soyisim),
            leading: CircleAvatar(
              child: Text(oAnkiOgrenci.id.toString()),
            ),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 4 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.teal,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView klasikListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(
                  child: Text(ogr.id.toString()),
                ),
              ))
          .toList(), // map bittikten sonra toList yapisini unutma. map yapisini listeye donusturmemiz lazim
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, Ogrenci secilen) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilen.toString()),
            content: SingleChildScrollView(
              // alert uyari penceresinde yukari asagi kaydirmayi saglar

              child: Text('Muttlip ATASAYAR' * 100),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kapat'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Tamam'),
              ),
            ],
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
  @override
  String toString() {
    return 'Isim : $isim SoyIsim :$soyisim id : $id';
  }
}

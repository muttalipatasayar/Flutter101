import 'package:flutter/material.dart';

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
              print("Elaman tiklanti : $index");
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
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci(this.id, this.isim, this.soyisim);
}

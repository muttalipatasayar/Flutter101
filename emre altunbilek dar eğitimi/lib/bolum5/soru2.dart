import 'dart:math';

import 'ogrenci.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
  List<Ogrenci> tumOgrenciler = List.filled(5, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);

  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] = Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

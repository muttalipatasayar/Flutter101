import 'ilk_sinif_ornek.dart';

void main(List<String> args) {
  Ogrenci muttalip = Ogrenci(5, "muttalip");
  Ogrenci hasan = Ogrenci.idSiz("hasan");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "ayse");

  print(ayse.id);
  print(ayse.isim);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("varsayilan kurucu calisti");
  }

  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmis kurucu calisti");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}

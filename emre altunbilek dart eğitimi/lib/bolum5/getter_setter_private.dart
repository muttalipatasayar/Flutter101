/* 
  Private degisken ve fonksiyonlar : Bir siniftaki degisken ve metodlari bazen erisime kapatmak isteyebiliriz. 
  Bu durumda _ isareti ile bunlari saklariz.

  getter metodlari : sinif degiskenlerini okumak icin kullanilan ozel fonksiyonlardir.
  Bu metodlarin amaci ozellikle private yani dis dunyanin  erisime kapatilmis degiskenlerin gerekli oldugunda okunmasini saglamaktir


  setter metodlari : sinif degiskenlerine veri atamak icin kullanilir. 
  Bu metodlarin amaci ozellikle  private yani dis dunyanin erisimine kapatilan degiskenlere veri aktarmaktir, 
  ayrica veri atamasi yapilirken gerekli olan kontrollerin ve islemlerin yapilmasi icin kullanilir


 */

import 'verTabani_islemleri.dart';

void main(List<String> args) {
  VeriTabaniIslemleri db = VeriTabaniIslemleri();
  db.baglan();
  bool sonuc = db.baglan();
  if (sonuc) {
    print("Baglandim");
  } else {
    print("baglanamadim");
  }
}

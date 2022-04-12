/*  soru 1 = CemberDaire isimli sinif olusturun. bi sinifin yaricap alan kurucusu olmali
Ayrica cevre ve allani hesaplayan metodlar olmali (pi= 3.14 alin)

    soru 2 = ogrenci isimli sinif olusturun Bu sinifta ogrencinin idsi ve not degeri tutulmali. 
    100 elemanli bir listede id ve not degerlerini rastgele olusturarak bu bu ogrencileri saklayin
    ve bu ogrencileri yazdiran metodu yazin
 */
import 'cember_daire.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(4);
  print("Alan : ${c1.alanHesapla()}");
  print("Cevre : ${c1.cevreHesapla()}");
}

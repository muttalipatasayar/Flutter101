// ornek 1 = iki notu girilen ogrencinin ortalamasini bularak sonucu ekrana gosteren algoritmayi yazin
// ornek 2 = fiyati girilen urune %18 kdv ekleyerek son fiyati hesaplayan algoritmayi yazin

import 'dart:io';

void main(List<String> args) {
  /* print("birinci notunuzu giriniz ");
  int? not1 = int.parse(stdin.readLineSync()!);

  print("ikinci notunuzu giriniz");
  int? not2 = int.parse(stdin.readLineSync()!);
  double? ortalama;

  ortalama = (not1 + not2) / 2;
  print("girdiginiz sayilarin ortalamasi = $ortalama"); */

  print("ürunun fiyatini giriniz");
  double fiyat = double.parse(stdin.readLineSync()!);
  fiyat = (fiyat * 0.18) + fiyat;
  print("urunun %18 kdv eklenmis fiyati = $fiyat");
}

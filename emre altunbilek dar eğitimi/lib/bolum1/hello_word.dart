void main(List<String> args) {
  print("muttalip atasayar");
  print(2 + 4);

  int yas = 24;
  print(yas);

  num yil = 1998;
  print(yil);

  int kilo = 80.7.toInt();
  print(kilo);

  double? s1 = null; // degiskenin sonunda soru isareti ? kullanildiginda olabilir anlami katar. bu satirda null dobule olabilir anlami verilmistir.
  print(s1);

  String isim = "Muttalip";
  String soyIsim = "Atasayar";
  var kurs = 'dart`in kullanimi';
  String kursTanitimi = "Dart`i ve Flutter`i ogrenecegiz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadim olan $soyIsim`te buluanan karakter sayisi:" + soyIsim.length.toString()); // toString ile sayisal bir degeri metin tipine donusturduk
  print("karekter sayisi ${soyIsim.length.toString()}");

  double en = 10;
  double boy = 12;

  print("Eni $en boyu $boy olan dikdortgenin alani : ${en * boy}");

  print("Eni boyu belli dikdortgenin alani ${en.toInt() * boy.toInt()}");
  print("en ve boy degerleri belli olan dikdortgenin alani ${(en * boy).toInt()}"); // toInt ile ondalikli bir sayisi tam sayiya donusturduk.
}

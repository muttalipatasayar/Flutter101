void main(List<String> args) {
  int sayi = 5;
  var sayi2 = 10;
  Ogrenci muttalip = Ogrenci();
  muttalip.ogrAd = "Muttalip atasayar";
  muttalip.ogrNO = 217;
  muttalip.aktifMi = true;
  Ogrenci hasan = Ogrenci();
  Ogrenci ayse = Ogrenci();

  var kemal = Ogrenci();
}

class Ogrenci {
  int ogrNO = 1;
  String ogrAd = ""; // degerler null olabilir diye ? soru isareti kullandik
  bool aktifMi = true;

  void dersCalis() {
    print("ogrenci ders calisiyor");
  }
}

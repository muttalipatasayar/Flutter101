void main(List<String> args) {
  // soru 1 = adinizi sayadinizi ve yasinizi farkli degiskenlerde saklayip ekrana "benim adim Muttalip Atasayar yasim 30 ve tum isimlerdeki karakter sayisini yazdirin"

  String ad = "Abdulmuttalip";
  String soyAd = "Atasayar";
  int yas = 30;

  print("Benim adim $ad $soyAd yasim $yas ve tum ismimdeki harf sayisi ${ad.length + soyAd.length}");

  print("Benim adim $ad $soyAd yasim $yas ve tum ismimdeki harf sayisi ${(ad + soyAd).length}"); // ustteki ciktinin farkli yazilimi

  // Soru 2 = bír ucgenin tum kenarlarini degiskenlerde saklayip cevresini ekrana yazdirin.

  int birinciKenar = 6;
  var ikinciKenar = 9;
  int ucuncuKenar = 4;
  int cevre;
  cevre = (birinciKenar + ikinciKenar + ucuncuKenar);
  print("ucgenin cevresi $cevre");
}

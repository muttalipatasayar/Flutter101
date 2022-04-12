void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(8, 9);
  print("sonuc = $sonuc");
  int hacimHesabi = hacimHesapla(8, 9, 10);
  print("islemin sonucu $hacimHesabi");
}

// parametresiz fonksiyon
cevreyiHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("Cevre = $cevre");
}

// parametre alan fonksiyon
alanHesapla(int sayi1, int sayi2) {
  /* int alan = sayi1 * sayi2;
  print("alan $alan"); */
  return sayi1 * sayi1;
}

hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

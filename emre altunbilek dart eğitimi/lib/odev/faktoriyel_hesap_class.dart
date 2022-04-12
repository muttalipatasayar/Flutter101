class FaktoriyelHesapla {
  int hesapla(int fakt) {
    int sonuc = 1;
    for (var i = 1; i < fakt + 1; i++) {
      sonuc = sonuc * i;
    }
    return sonuc;
  }
}

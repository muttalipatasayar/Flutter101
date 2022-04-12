import 'dart:math';

class CemberDaire {
  int _yariCap = 1;
  double _piSayisi = 3.14;

  CemberDaire(int yariCap) {
    _yariCapKontrol = yariCap;
  }

  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yariCap = deger;
    } else {
      _yariCap = 1;
    }
  }

  double cevreHesapla() {
    return 2 * _piSayisi * _yariCap;
  }

  double alanHesapla() {
    return _piSayisi * _yariCap * _yariCap;
  }
}

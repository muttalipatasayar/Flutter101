void main(List<String> args) {
  Matematik m1 = Matematik(40, 10);
  m1.carp();
  print(Matematik.Pi);
  Matematik.sinifAdiniSoyle();
  print("toplam islem sayisi ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  // instance veriable
  int sayiBir = 0;
  int sayiIki = 0;
  static int toplamIslemSayisi = 0;
  // class variable / sinif degiskeni
  static double Pi = 3.14;

  Matematik(this.sayiBir, this.sayiIki);
  static void sinifAdiniSoyle() {
    print("ben matematik sinifiyim");
  }

  void carp() {
    toplamIslemSayisi++;
    print("sayilarin carpimi = ${sayiBir * sayiIki}");
  }
}

class Otobus {
  late int kapasite = 10;
  late String nereden;
  late String nereye;
  late int mevcutYolcu;

  void yolcuAl(int yolcuSayisi) {
    mevcutYolcu = mevcutYolcu + yolcuSayisi;
  }

  void yolcuIndir(int yolcuSayisi) {
    mevcutYolcu = mevcutYolcu - yolcuSayisi;
  }

  void bilgiAl() {
    print("Kapasite : $kapasite");
    print("Nereden : $nereden");
    print("Nereye : $nereye");
    print("Mevcut Yolcu : $mevcutYolcu");
  }
}

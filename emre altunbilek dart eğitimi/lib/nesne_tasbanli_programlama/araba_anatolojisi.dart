class Araba {
  late String renk;
  late int hiz;
  late bool calisiyorMu;

  void calistir() {
    // calistir metodunu olusturduk
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur() {
    // durdur metodunu olusturduk
    calisiyorMu = false;
    hiz = 0;
  }

  void bilgiAl() {
    print("Renk : $renk");
    print("Hiz : $hiz");
    print("Calisiyor Mu : $calisiyorMu");
  }

  void hizlan(int kacKm) {
    hiz = hiz + kacKm;
  }

  void yavasla(int kacKm) {
    hiz = hiz - kacKm;
  }
}

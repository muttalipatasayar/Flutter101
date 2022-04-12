void main(List<String> args) {
  Araba honda = Araba();
  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true;
  honda.bilgileriSoyle();

  /* var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla(); */
}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  void bilgileriSoyle() {
    print("Arabanin model yili ${modelYili}, markasi : ${marka} otomatik mi : ${otomatikMi}");
  }

  /* Araba(int modelYili, String marka, bool otomatikMi) {
    print("kurucu metod tetiklendi");
    this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi;
  } */

  void yasHesapla() {
    print("Arabanin yasi ${2022 - modelYili!}"); //! unlem isareti null olabilecek seyleri nullmis gibi gosterir
  }
}

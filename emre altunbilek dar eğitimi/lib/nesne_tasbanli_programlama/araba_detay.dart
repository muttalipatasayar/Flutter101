import 'araba_anatolojisi.dart';

void main() {
  var bmw = Araba();

  // deger atama
  bmw.renk = "Kirmizi";
  bmw.hiz = 300;
  bmw.calisiyorMu = true;
  print(bmw.renk);

  bmw.renk = "Maviii";

  // deger okuma
  //print(bmw.renk);
  print(bmw.hiz);
  print(bmw.calisiyorMu);

  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();

  bmw.calistir();
  bmw.bilgiAl();

  bmw.hizlan(60);
  bmw.bilgiAl();

  bmw.yavasla(15);
  bmw.bilgiAl();

  print("****************************************");

  var limuzin = Araba();
  limuzin.renk = "Siyah";
  limuzin.hiz = 100;
  limuzin.calisiyorMu = true;

  limuzin.bilgiAl();
}

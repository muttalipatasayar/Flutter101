import 'otobus_anatolojisi.dart';

void main() {
  var kamilKoc = Otobus();

  // deger atama
  kamilKoc.kapasite = 50;
  kamilKoc.nereden = "Erzurum";
  kamilKoc.nereye = "Istanbul";
  kamilKoc.mevcutYolcu = 20;

  // deger okuma

  int gelenKapasite = kamilKoc.kapasite;
  print(gelenKapasite);
  print(kamilKoc.nereden);
  print(kamilKoc.nereye);
  print(kamilKoc.mevcutYolcu);

  print("****************************");

  kamilKoc.bilgiAl();
  kamilKoc.yolcuAl(4);
  kamilKoc.bilgiAl();

  kamilKoc.yolcuIndir(7);
  kamilKoc.bilgiAl();

  var otobusFirmasi = Otobus();
  otobusFirmasi.kapasite = 15;
  otobusFirmasi.nereden = "Kayseri";
  otobusFirmasi.nereye = "Antalya";
  otobusFirmasi.mevcutYolcu = 4;

  otobusFirmasi.bilgiAl();
}

void main(List<String> args) {
  // soru 1 = 3 tane double degiskeni olusturup bunlarin ortalamasini yazdiran programi yazdiriniz

  double sayi1 = 12;
  double sayi2 = 24;
  double sayi3 = 36;
  double ortalama;
  ortalama = (sayi1 + sayi2 + sayi3) / 3;
  print(ortalama);

  // soru 2 = kenarlarini girdiginiz ucgenin cesidini yazdiran programi yaziniz

  int kenar1 = 1;
  int kenar2 = 2;
  int kenar3 = 3;

  if ((kenar1 == kenar2) && (kenar2 == kenar3) && (kenar1 == kenar3)) {
    print("eskenar ucgen");
  } else if ((kenar1 == kenar2) || (kenar1 == kenar3) || kenar2 == kenar3) {
    print("ikizkenar ucgen");
  } else {
    print("cesit kenar ucgen");
  }

  // soru 3 = vize ve final notlarini alip dersi gecip gecmedigini bulan programi yaziniz (gecme notu degeri 50 nin uzerinde, vizenin %40 finalin %60i alinir.)

  int vize = 60;
  int finall = 70;
  double gecmeNotu;
  gecmeNotu = (vize * 0.4) + (finall * 0.6);
  //print("gecme notu = $gecmeNotu");

  if (gecmeNotu >= 50) {
    print("Sinav ortalamaniz = $gecmeNotu Tebrikler dersi gectiniz ");
  } else {
    print("Sinav ortalamaniz = $gecmeNotu Malesef dersten kaldiniz ");
  }

  // soru 4 = Kendi adinizi ekrana 5 defa yazdira programi tum dongu turleri ile yaziniz

  String isim = "Muttalip";
  int i = 5;

  /* for (int i = 0; i < 5; i++) {  // for dongusu ile adimi 5 defa yazdirdim 
    print("$isim");
  } */

  /* int kontrol = 0;

  while (kontrol < 5) {
    print("${kontrol + 1} dongudeki isim : Muttalip");
    kontrol++;
  } */
  int kontrol1 = 0;
  do {
    print("${kontrol1 + 1}.inci dongude isim : Emre altunbilek");
    kontrol1++;
  } while (kontrol1 < 5);

  print("*********************************");

  // soru 5  = 1 den 100e kadar olan ve 15 ile tam bolunen sayilarin karelerini ekrana yazdiriniz
  int sayi = 100;
  int kare;

  for (int i = 1; i <= 100; i++) {
    if ((i % 3 == 0) && (i % 5 == 0)) {
      print("15 ile bolunebilen $i nin karesi = ${i * i}");
    }
  }

  print("*************************************************");

  // soru 6 = tanimlanan bir int saysinin faktoriyelini hesaplayan programi yaziniz

  var rakam = 6;
  var faktoriyel = 1;

  for (var i = rakam; i > 1; i--) {
    faktoriyel *= i;
    print(faktoriyel);
  }
}

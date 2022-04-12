void main(List<String> args) {
  int sayi1 = 45;
  num sayi2 = 12;

  if (sayi1 > sayi2) {
    print("$sayi1 sayisi $sayi2 sayisindan buyuktur");
  } else if (sayi1 < sayi2) {
    print("$sayi1 sayisi $sayi2 sayisindan kucuktur");
  } else {
    print("$sayi1 sayisi $sayi2 sayisina esittir");
  }

  print("*********************************************");

  int notDegeri = 87;

  if (notDegeri >= 85 && notDegeri < 100) {
    print("harf notunuz AA");
  } else if (notDegeri >= 75 && notDegeri <= 84) {
    print("harf notunuz BA");
  } else if (notDegeri >= 50 && notDegeri <= 74) {
    print("harf notunuz BB");
  } else if (notDegeri >= 35 && notDegeri <= 49) {
    print("haff notunuz CC");
  } else {
    print("harf notunuz FF sinifta kaldiniz");
  }
}

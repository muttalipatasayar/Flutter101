// soru 1 = parametre olarak bir tane int sayi alan fonksiyonu yaziniz.
//bu fonksiyon aldigi degere kadar olan sayilarin toplamini geriye dondursun

// soru 2 = daire alanini hesaplayan fonksiyonu yaziniz. pi sayisi opsiyonel olmali.
//Eger pi sayisi verilmediyse varsayilan olarak 3.14 olarak hesaplama yapin

// soru 3 = bir ucgenin kenarlarini isimlendirilmis parametre olarak alan fonksiyonu yazin.
//bu fonksiyon kenar degerlerine gore bu ucgenin cesit kenar ikizkenar veya eskenar oldugunu ekrana yazdirin geriye deger dondurmesin

void main(List<String> args) {
  int toplam = ciftSayilarinToplaminiBul(10);
  print(toplam);

  double sonuc = daireninAlani(2);
  print(sonuc);

  double sonuc2 = daireninAlani(2, 5);
  print(sonuc2);
  ucgenCesidi();
}

// soru 1in cevabi
ciftSayilarinToplaminiBul(int sayi) {
  int toplam = 0;
  for (int i = 0; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }
  return toplam;
}

// soru 2 nin cevabi
daireninAlani(double r, [double pi = 3.14]) {
  return (r * r) * pi;
}

// soru3 un cevabi

ucgenCesidi({int kenar1 = 4, int kenar2 = 4, kenar3 = 4}) {
  if (kenar1 == kenar2 && kenar1 == kenar3) {
    print("belirtilen ucgen eskenar ucgendir");
  } else if (kenar1 == kenar2 || kenar2 == kenar3) {
    print("belirtilen ucgen ikizkenar ucgendir");
  } else {
    print("belirtilen ucgen cesitkenar ucgendir");
  }
}

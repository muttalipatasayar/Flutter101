void main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;

  // Aritmetik operatorler
  print("$sayi1 + $sayi2 toplam ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 toplam ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 toplam ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 toplam ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 toplam ${sayi1 % sayi2}");

  // Atama ve karsilastirma operatorleri

  double sayi3 = 5;
  sayi3 = sayi3 + 5;
  print(sayi3);

  sayi3 += 5; // sayi3 = sayi3 + 5
  print(sayi3);

  // Mantiksal operatorler
  // && , || , !   => ve , veya , degilse

  bool kosul1 = false;
  bool kosul2 = false;

  print(kosul1 && kosul2);
  print(kosul1 || kosul2);
  print(!kosul1);

  // Artirma Azaltma Operatorleri

  int sayi4 = 10;
  sayi4 = sayi4 + 1;
  sayi4 += 5;
  print(sayi4);

  sayi4++;
  print(sayi4);

  int sayi5 = 10;
  print(sayi5++);
  print(++sayi5);
}

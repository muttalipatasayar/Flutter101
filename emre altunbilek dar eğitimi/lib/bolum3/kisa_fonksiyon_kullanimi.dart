void main(List<String> args) {
  int fark = sayilarinFarki(88, 40);
  print("sayilarin farki = $fark");
  print("sayilarin carpimi " + sayilariCarpimi(5, 6).toString());
  print("iki sayidan en buyugu = " + maxOlaniBul(6, 109).toString());
  print("sayilarin en kucugu " + minOlaniBul(3, 8).toString());
}

int sayilarinFarki(int sayi1, int sayi2) {
  return sayi1 - sayi2;
}

int sayilariCarpimi(int s1, int s2) => s1 * s2;

int maxOlaniBul(int a1, int a2) => (a1 > a2) ? a1 : a2;

int minOlaniBul(int b1, int b2) => (b1 < b2) ? b1 : b2;

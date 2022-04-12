// Lambda : ismi olmayan fonksiyonlardir. Dartta her fonksiyon aslinda bir nesnedir.

void main(List<String> args) {
  Function fonksiyon1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };
  fonksiyon1(5, 8);

  //String isim = "muttalíp";

  var f2 = (int s) => s * 2; // => sisman ok suslu parantez ve return yazmadan ayni ifadeyi dondurmemizi saglar

  var f3 = (int s2) {
    return s2 * 2;
  };
  var sayi = f2(5);

  print(sayi);
  print(f3(6));
}

// normal bir fonksiyon
void sayilarinToplami(int a, int b) {
  int toplam = a + b;
  print(toplam);
}

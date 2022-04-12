void main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      print("cift sayilar tam karsinizdadir $i");
    }
  }
  List isimListesi = ["Emre", "Hasan", "Muttalip"];
  for (String gecici in isimListesi) {
    print(gecici);
  }
  for (int i = 0; i < isimListesi.length; i++) {
    print("Okunan eleman " + isimListesi[i]);
  }
}

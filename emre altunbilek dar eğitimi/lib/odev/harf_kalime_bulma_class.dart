// parametre olarak girilen kelime ve harf icin harfin kelime icinde kac adet oldugunu gosteren bir metod yaziniz

class HarfBulma {
  void kelimeAdedi(String kelime, String harf) {
    int sayac = 0;

    for (var i = 0; i < kelime.length; i++) {
      if (kelime[i] == harf) {
        sayac = sayac + 1;
      }
    }
    print("harf adedi $sayac");
  }
}

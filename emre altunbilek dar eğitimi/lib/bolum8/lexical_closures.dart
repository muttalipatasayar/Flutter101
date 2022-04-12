// Closure ozel bir fonksiyondur, closure ile bir ust kapsamdaki degiskenlerin degerini degistirebiliriz

void main(List<String> args) {
  var dondurulenFonksiyon = topla(3); // onceki fonksiyonun degeri 3
  var sonuc = dondurulenFonksiyon(4); // sonraki fonrakiyonun degeri 4
  print(sonuc);
}

Function topla(int eleman) {
  return (int deger) => eleman * deger; // onceki fonksiyonun degeri sistemden silinmeden tekrar kullanarak yeni fonksiyon degeri ile carpiyor
}

// IMMUTABLE -> DEGISMEZ
void main(List<String> args) {
  /* var str = "muttalip";
  str = "atasayar";
  print(str); */

  final String isim = "muttalip";
  //isim = "emre";  // final yani degismez bir veri turu ile degisken tanimlandiginda o degiskene farkli deger atanamaz hata verir.

  const isim2 = "talip";
  //isim2 = "faruk"; // const da final gibi degistirilemez veri turudur.

  /* final liste = [1, 2, 3];
  final liste2 = [1, 2, 3]; */

  const liste = [1, 2];
  const liste2 = [1, 2];

  if (liste == liste2) {
    print("esit");
  } else {
    print("esit degil");
  }
}

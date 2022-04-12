void main(List<String> args) {
  List<int> sayilar = [2, 5, 6, 8, 8, 6, 8, 9, 34];
  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }

  print("Bos mu :" + sayilar.isEmpty.toString());
  print("Eleman sayisi : ${sayilar.length}");
  sayilar.remove(2);
  print(sayilar);
  sayilar.removeAt(5);
  print(sayilar);

  if (sayilar.contains(9)) {
    // contains listede belirtilen nesnenin olup olmadigini sorgular
    print("listede 9 rakami vardir");
  } else {
    print("listede 9 rakami yoktur");
  }

  print(sayilar.elementAt(3));
  print(sayilar.indexOf(9)); //elemanin index numarasini verir
  print(sayilar);
  sayilar.shuffle();
  print(sayilar);
}

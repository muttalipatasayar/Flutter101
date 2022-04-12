void main(List<String> args) {
  List<int> sayilar = [];
  sayilar.add(2);
  sayilar.add(4);
  sayilar.add(6);
  print(sayilar);

  List<int> sayilar3 = [1, 3, 4];
  sayilar3.add(55);
  print(sayilar3);

  List<int> sayilar2 = List.filled(10, 10, growable: true); // growable = listenin buyuyebilme durumu true olarak belirtildi
  sayilar2.add(55);
  print(sayilar2);
  print(sayilar2.length);

  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  sayilar4.add(4);
  print(sayilar4);
}

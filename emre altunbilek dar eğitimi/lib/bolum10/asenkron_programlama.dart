import 'dart:io';

void main(List<String> args) {
  print("anne cocugu ekmek almaya yollar");
  Future<String> sonuc = uzunSurenIslem();
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("Ekmek alma operasyonu bitti"));
  print("Peyir zeytin hazirlanir");
  print("Kahvalti hazirlanir");
}

Future<String> uzunSurenIslem() {
  print("cocuk ekmek almak icin evden cikar");
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "cocuk ekmekle eve gelir";
    //throw Exception("bakkalda ekmek kalmamis");
  });
  return sonuc;
}

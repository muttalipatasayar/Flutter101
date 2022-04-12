void main(List<String> args) async {
  print("internetteki kisi verisi getirilecek");
  String kisi = await kisiVerisiGetir();
  print("Baska isler yapilacak");
  print(kisi.length);
  print("islem bitti ");
}

Future<String> kisiVerisiGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "Kisi adi : Muttalip ve id : 100";
  });
}

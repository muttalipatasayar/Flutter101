void main(List<String> args) {
  print("program basladi");
  try {
    int sayi = 100 ~/ int.parse("muttlalip");
    print(sayi);
  } on UnsupportedError {
    print("sayilar sifira bolunemez");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("hata cikti : ${e.toString()}");
  } finally {
    print("islem bitti");
  }
  print("program bitti");
}

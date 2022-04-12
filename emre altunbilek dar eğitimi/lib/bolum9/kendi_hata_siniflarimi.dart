void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-7);
  } on AgeException catch (e) {
    print(e.mesaj);
  }
}

class AgeException implements Exception {
  String mesaj = '';
  AgeException({this.mesaj = 'AgeException'});
  @override
  String toString() {
    return ("hatanin toString metodu calisti");
  }
}

class Ogrenci {
  int yas = 0;
  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: 'AgeException - Yas negatif olamaz');
    } else
      this.yas = yas;
  }
}

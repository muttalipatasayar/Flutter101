void main(List<String> args) {
  Map<String, int> alanKodlari = {"Ankara": 312, "Bursa": 224, "istanbul": 212};
  print(alanKodlari);
  print(alanKodlari["Bursa"]);

  Map<String, dynamic> Muttalip = {"soyad": "Atasayar", "yas": 30, "bekarMi": true};
  print(Muttalip['yas']);

  for (String oanklAnahtar in Muttalip.keys) {
    print(oanklAnahtar);
  }

  for (var element in Muttalip.entries) {
    // entries => girdi demek
    print("Key : ${element.key} degeri : ${element.value}");
  }

  if (Muttalip.containsKey('yas')) {
    print("bulunan yas degeri ${Muttalip['yas']}");
  }
}

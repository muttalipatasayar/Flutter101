void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, int>{'yas': 30};
  var mySet = {'Muttalip'};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  var sonListe = [...tekSayilar, ...ciftSayilar];
  /*  sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar); */

  print(sonListe);
}

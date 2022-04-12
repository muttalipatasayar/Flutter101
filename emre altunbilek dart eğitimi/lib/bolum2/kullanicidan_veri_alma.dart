import 'dart:io';

void main(List<String> args) {
  print("Adinizi giriniz. ");
  String? isim = stdin.readLineSync(); // kullanicidan veri girisi yapilmak istendiginda bu konut kullanilir
  print("girilen isim $isim");

  print("yasinisiz giriniz");
  int? yas = int.parse(stdin
      .readLineSync()!); // ? soru isareti ile kullanicin girdigi deger null da olsa calisacaktir. ! isareti de null olabilecek degeri string gibi kullanamazsin demektedir.oldugu gibi kullanabilmek icin ! isaretini kullandik
  print("girilen yas $yas");
}

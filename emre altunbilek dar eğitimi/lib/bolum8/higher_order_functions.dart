/* 
    Higher order functions : bir fonksiyonu parametre olarak alan veya geriye
    fonksiyon donduren fonksiyonlardir.

 */

void main(List<String> args) {
  List<int> liste = [1, 2, 3];
  /*liste.forEach((element) {
    print("elementler $element");
  }); */

  liste.forEach((callback));
  kendiForEachYapim(liste, (int deger, int index) {
    print("deger : $deger  index $index");
  });
}

void kendiForEachYapim(List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) callback(liste[i], i);
}

void callback(int element) {
  print("element $element");
}

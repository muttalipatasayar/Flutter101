/* 
  Set yapisinin List yapisindan en onemli farki elemanlari sirali olarak tutmaz, bu durumda listlerde oldugu gibi indexleri kullanamayiz
  Bir diger farki ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farkli olur

  index olmadan elemanlari kontrol etmek icin constains methodu kullanilabilir.  onun disinda listelerdeki methotlar set icin de gecerlidir.
 */

void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("muttlip");
  isimler.add("adem");
  isimler.add("muttlip");
  isimler.add("adem");
  isimler.add("talip");
  isimler.add("cem");

  for (String s1 in isimler) {
    print(s1);
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 2, 1, 5, 2, 1, 4, 1, 1, 1, 1, 1]);
  for (int s1 in numaralar) {
    print(s1);
  }
}

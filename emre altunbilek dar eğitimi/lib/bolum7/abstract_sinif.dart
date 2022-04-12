/*  
  Abstract soyut sinif : siniflar arasinda soyutlama yapmak icin kullanilir.
  Abstract siniflardan nesne uretilmez, abstract siniflarda normal ve abstract method olur
  abstract methodlar alt siniflarca override edilmek zorundadir.

  Bir sinifta bir tane abstract method varsa o sinif mutlaka abstract tanimlanmalidir 
 
  */

void main(List<String> args) {}

abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla() {
    print("ben sekil sinifindanim");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }
}

class Dikdortgen extends Sekil {
  int en, boy;

  Dikdortgen(this.en, this.boy);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (en + boy).toDouble();
  }
}

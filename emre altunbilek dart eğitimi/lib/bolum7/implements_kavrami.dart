/*  Dart dilinde interface kavrami yoktur. Ama siniflari implements anahtar kelimesi ile interfacemis gibi kullanabiliriz

  interfaceker sayesinde ortak ozelligi olan ancak kalitimsal olarak alakasi olmayan siniflari bir cati altinda toplayabiliriz

  Interface olarak kullanilan siniflarin methodlari bu siniflari implemente eden siniflar tarafindan yapilmak zorundadir

  interfaceler sayesinda dart dilinde olmayan coklu kalitim saglanabilir. Bir sinif birden fazla sinifi implements diyerek gerceklestirebilir 


 */

void main(List<String> args) {}

abstract class Ucabilenler {
  void fly();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Kus implements Ucabilenler {
  @override
  void fly() {
    // TODO: implement fly
  }
}

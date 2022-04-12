class Sekil {
  // parent class
  late int kenar; // property

  Sekil() {
    // (unnamed) constructor
    this.kenar = 0;
  }

  Sekil.withSideCount(int kenar) {
    // named constructor
    this.kenar = kenar;
  }

  void describe() {
    // method
    print('Benim $kenar adet kenarim var!');
  }

  int calcuateArea() {
    return -1;
  }
}

class DikDortgen extends Sekil {
  // child class
  late int width;
  late int height;

  DikDortgen() {
    this.kenar = 4;
    this.width = 0;
    this.height = 0;
  }

  DikDortgen.withSides(int width, int height) {
    this.kenar = 4;
    this.width = width;
    this.height = height;
  }

  @override
  int calculateArea() {
    return this.width * this.height;
  }
}

class Kare extends DikDortgen {
  late int length;

  Kare(int length) {
    this.length = length;
  }

  @override
  int calculateArea() {
    return this.length * this.length;
  }
}

void main() {
  // var a = Sekil();
  // a.describe();

  var ucgen = Sekil.withSideCount(3);
  // Sekil => Class
  // ucgen => instance
  ucgen.describe();
  print(ucgen.calcuateArea());

  var dortgen = DikDortgen.withSides(8, 10);
  dortgen.describe();
  print(dortgen.calcuateArea());

  var kare = Kare(10);
  kare.describe();
  print(kare.calcuateArea());
}

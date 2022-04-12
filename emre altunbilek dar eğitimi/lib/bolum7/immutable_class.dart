void main(List<String> args) {
  const Student muttalip = Student(5, "talip");
  const Student muttalip2 = Student(5, "talip");

  if (muttalip == muttalip2) {
    print("esittir");
  } else {
    print("esit degildir");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}

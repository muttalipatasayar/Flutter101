import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-32);
    print("sayinin karekoku : ${deger.toStringAsFixed(2)}");
  } catch (e) {
    print(e);
  }
}

double kareKokunuAl(int i) {
  if (i < 0) {
    throw FormatException("Sayi negatif olamaz");
  } else
    return sqrt(i);
}

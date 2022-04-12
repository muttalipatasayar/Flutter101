void main(List<String> args) {
  double doubleOrtalama = ortalamaBul(5, 5.4);
  double intOrtalama = ortalamaBul<int>(5, 7);

  print("Sayilarin Ortalamasi : $doubleOrtalama");
  print("Sayilarin Ortalamasi : $intOrtalama");
}

double ortalamaBul<T extends num>(s1, s2) {
  return (s1 + s2) / 2;
}

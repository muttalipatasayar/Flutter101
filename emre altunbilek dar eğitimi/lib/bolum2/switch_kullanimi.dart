void main(List<String> args) {
  String notDegeri = 'AA';

  switch (notDegeri) {
    case 'AA':
      print("Notunuz 90 - 100 araligindadir");
      break;
    case "BA":
      print("Notunuz 80 - 90 arasindadir");
      break;

    case 'BB':
      print("Notunuz 70 - 80 araligindadir");
      break;
    case "CB":
      print("Notunuz 60 - 70 arasindadir");
      break;

    case 'CC':
      print("Notunuz 50 - 60 araligindadir");
      break;
    case "FF":
      print("Notunuz 50 den dusuk, cok calismaniz gerekiyor.");
      break;

    default:
      {
        print("hatali deger girildi.");
      }
  }
}

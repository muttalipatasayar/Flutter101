/*  sorular 1 

  bir fonksiyon yazin bu fonksiyon aldigi id parametresine gire bir kullanici getirsin. Bu islem 2sn sonra sonuclanacaktir
  getirilen kisi bilgisi map olarak sonuclanacaktir. bu map yapisinda username ve id bilgisi olmasi yeterlidir

  2
   getirilen user bilgisindeki username degerini kullanarak kisinin kurslarini getiren bir fonksiyon yazin. 
   Bu fonksiyon 4sn surecektir ve username degerine ait olan kurslari icinde kursun adlari olan bir liste olarak dondurulecektir

   3
   son olarak da kurslar ilk elemani parametre olarak alan ve bu kursa ait bir yorumu donduren bir fonksiyon yazin. bu fonksiyon bir sn surecektir
*/

void main(List<String> args) {
  idyeGoreUserGetir(5).then((value) {
    print(value);
    usernameGoreKurslariGetir(value['username']).then((List kurslarListesi) {
      print(kurslarListesi);
      String ilkKurs = kurslarListesi[0];
      kursunIlkYorumunuGetir(ilkKurs).then((String yorum) {
        print(yorum);
      });
    });
  });
}

Future<String> kursunIlkYorumunuGetir(String kursAdi) {
  return Future.delayed(Duration(seconds: 1), () {
    return "Kurs mukemmel";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String username) {
  print("$username kullanicinin kurslari getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['fluter', 'kodlin', 'javaScript'];
  });
}

Future<Map<String, dynamic>> idyeGoreUserGetir(int id) {
  print("$id idli kullanici getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'muttalipatasyar', 'id': id};
  });
}

/* 
     methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilsede olur 
     verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.

     Eğer köşeli parantez [] kullanırsak bu ilgili parametrenin methoda gönderimesi zorunluluğunu ortadan kaldırır

     Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır. 
     Ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.

     Ayrıca method tanımlarında parametrelere  = diyerek varsayılan değerler atayabiliriz. 
     Bu değerler sayesinde eğer kullanıcı method parametrelerini atamamışsa bu varsayılan değerler kullanırlır.
  
    
    */

void main(List<String> args) {
  //int goster = sayilariTopla(4, 5, 6);
  int goster2 = sayilariTopla2(2, 7, 9);

  //print(goster);
  print(goster2);
}

// required parametreler
/* int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
} */

// optional parametre
int sayilariTopla2(int sayi1, [int sayi2 = 0, int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

//  optional named => isimlendirilmis parametreler


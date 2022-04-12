/* 
  Dart varsayilan olarak hicbir degiskene null deger atamasina izin vermez. Buna dart non-nullable tip denir. 
  Bir degisken tanimlayip uygun veriyi atamazsaniz size uyari verecektir. Bu uyarida degiskene ilk degeri atamaniz istenecektir.
  Boylece program calisirken hicbir non-nullable (null olamayan) bir degisken null degeri gostermez (null sound)


  Bunu istemiyorsaniz veri tipinin sonuna ? koyarsiniz. Boylece degiskende null deger saklanabilir. bunlar da aslinda yeni bir veri tipidir. 
  ? koyarak nullable type olusturmus olursunuz

 */

void main(List<String> args) {
  int? a; // int bir degisken ama null da olabilir demek
  a = null;
  print("a degiskeninin degeri $a");
}

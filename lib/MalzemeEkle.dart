/*

  Strategy Pattern
   Strategy tasarım deseni behavioral (davranışsal) grubuna aittir.
   Nesne tarafından kullanılan bir algoritmayı çalışma zamanında dinamik olarak değiştirmeyi
  sağlar.
   Kod tekrarını ortadan kaldırmanıza izin verir.

*/

//  Dartta Interface'leri tanımlarken herhangi bir Interface tanımlamamıza gerek yoktur.
//  Dartta her sınıf bir Interface'i tanımlar

//  Interface kavramını kullanmak için soyut bir sınıf kullanacağız.
abstract class MalzemeEkle {
  String malzemeEkle(String a);
}

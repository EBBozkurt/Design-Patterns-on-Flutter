import 'package:odev/MalzemeEkle.dart';

class EkstraSucuk implements MalzemeEkle {
  @override
  String malzemeEkle(String c) {
    return c + "Eklendi";
  }
}

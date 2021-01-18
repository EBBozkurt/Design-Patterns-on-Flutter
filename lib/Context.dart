import 'package:odev/MalzemeEkle.dart';

//Context Classımızı oluşturduk ve gerekli tanımlamaları gerçekleştirdik

class Context {
  //Private olarak Intarfacemizi ekledik
  MalzemeEkle _malzemeEkle;

  //Yapılandırıcı Constructor'umuzu oluşturalım
  Context(MalzemeEkle _malzemeEkle) {
    this._malzemeEkle = _malzemeEkle;
  }

  //Yapılan işlemleri execute metodumuzu oluşturalım.
  String executeMalzemeEkle(String d) {
    return _malzemeEkle.malzemeEkle(d);
  }
}

//Flutter(Dartta) public, private gibi anahtar kelimeler yoktur.
// "_" ile private yapılabilir

/*
Singleton Sınıfı Nedir ? 
Singleton sınıfların dışarıdan nesnesini oluşmasını istemediğimiz için Constructor’ları private olarak belirtilmelidir.
Singleton sınıfta kendine ait bir statik instance’ı vardı ve bu instance dışardan static bir getter method ile erişilebilir olmalıdır.
Genellikle Singleton sınıf Constructor’ları parametre almazlar.


Sadece bir adet instance oluşturmak istediğimiz için multi-thread dillerde Singleton sorunlar yaratabilir ancak Flutter 
bildiğimiz üzere tek thread üzerinden işleyen bir dil.

*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HosGeldiniz {
  //objemizi oluştururken static ve private olarak oluşturduk
  // Private Dart dilinde _xxxx olarak tanımlanır.
  //JAVA'nın aksine syntax'ımız değişik
  static HosGeldiniz _instance;

  //Private Constructor dart dilinde bu şekilde oluşturulabiliyor.
  HosGeldiniz._() {}

  static HosGeldiniz getInstance() {
    if (_instance == null) _instance = HosGeldiniz._();
    return _instance;
  }

//Bu kısımda Widgetımızı istediğimiz gibi değiştirebilir ve kullanabiliriz.
  Widget showMessage() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 5),
      child: Center(
        child: Text(
          "Pizza malzeme ekleme menüsüne hoş geldiniz.",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  //Bu kısımda Widgetımızı istediğimiz gibi değiştirebilir ve kullanabiliriz.
  Widget showMessage2() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 5, right: 5, bottom: 5),
      child: Center(
        child: Text(
          "Pizza malzeme ekleme menüsüne güle güle.",
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:odev/HosGeldiniz.dart';
import 'package:odev/Context.dart';
import 'package:odev/Malzemeler/EkstraBiber.dart';
import 'package:odev/Malzemeler/EkstraSucuk.dart';
import 'package:odev/Malzemeler/EkstraZeytin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  HosGeldiniz o =  HosGeldiniz.getInstance();

  String eklenecekMalzeme = "";
  int ekstraFiyat = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tasarım Desenleri Ödev',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Tasarım Desenleri Ödevi",
            ),
          ),
          body: Container(
            child: Column(
              children: [
                o.showMessage(),
                Container(
                  child: Image(
                    image: AssetImage("images/pizza.jpg"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          Context context = Context(EkstraBiber());
                          eklenecekMalzeme =
                              context.executeMalzemeEkle("Biber ");
                          ekstraFiyat += 5;
                        });
                      },
                      child: Text("Biber Ekle"),
                      color: Colors.green,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          Context context = Context(EkstraSucuk());
                          eklenecekMalzeme =
                              context.executeMalzemeEkle("Sucuk ");
                          ekstraFiyat += 15;
                        });
                      },
                      child: Text("Sucuk Ekle"),
                      color: Colors.orangeAccent,
                    ),
                    FlatButton(
                      onPressed: () {
                        setState(() {
                          Context context = Context(EkstraZeytin());
                          eklenecekMalzeme =
                              context.executeMalzemeEkle("Zeytin ");
                          ekstraFiyat += 3;
                        });
                      },
                      child: Text("Zeytin Ekle"),
                      color: Colors.black87,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                Text(
                  '$eklenecekMalzeme',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Toplam Ekstra Malzeme Tutarı: ",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$ekstraFiyat",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        ekstraFiyat = 0;
                      });
                    },
                    child: Text("Ödemeyi Sıfırla"),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                  ),
                ),
                o.showMessage2(),
              ],
            ),
          ),
        ));
  }
}

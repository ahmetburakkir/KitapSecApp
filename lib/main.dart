import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kitap_app/Pages/home_page.dart';
import 'package:kitap_app/Pages/navigation_bar.dart';


void main()
{
  runApp(KitapApp());
}

class KitapApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter KitapApp',
      home: KitapUygulamasi(),
    );
  }
}

class KitapUygulamasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        flexibleSpace: Stack(
          children: [

            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://cdn.kitapsec.com/temalar/KitapSec2017/img/logo.jpg'),
                )

              ),
            ),

            Positioned(
              left: 10, // Soldan 10 birim uzaklık
              top: 35, // Üstten 35 birim uzaklık
              child: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print('Menü butonuna tıklandı');
                },
              ),
            ),
            Positioned(
              right: 10, // Sağdan 10 birim uzaklık
              top: 35, // Üstten 10 birim uzaklık
              child: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  print('Bildirim butonuna tıklandı');
                },
              ),
            ),
          ],
        ),

      ),

    body:
      Container(
          child:
        NavigationExample(),

      ),
    );
  }
}
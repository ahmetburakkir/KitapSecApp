import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[

          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.kitapsec.com/image/katbanner/2025/02/14/11739535793.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.kitapsec.com/image/katbanner/2025/02/06/11738848717.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 5),

          Container(
            height: 100,
            width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.kitapsec.com/image/katbanner/2025/02/12/11739355244.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Text(
            "Fırsat Menüleri",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),

          Container(
            height: 1,  // Çizginin kalınlığı
            width: double.infinity,  // Çizgi tüm genişliği kapsar
            color: Colors.black26,  // Çizginin rengi
          ),


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal, // Yatay kaydırma desteği
          child: Row(
            children: [
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/kupon1735304852.jpg"),
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/ucretsiz1735304973.jpg"),
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/indirim1735305033.jpg"),
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/gunun-trednleri1735305143.jpg"),
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/firsat1735305250.jpg"),
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/sende-al1735305295.jpg"),
              ImageButton(imageUrl: "https://cdn.kitapsec.com/image/genel/2024/12/27/avantaj1735305211.jpg"),
            ],
          ),
        ),
      ),
      ]
    ),
    );
  }
}



class ImageButton extends StatelessWidget {
  final String imageUrl;

  const ImageButton({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$imageUrl butonuna tıklandı!');
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: 100, // Buton genişliği
        height: 100, // Buton yüksekliği
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
      ),
    );
  }
}

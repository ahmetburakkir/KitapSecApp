import 'package:flutter/material.dart';
import 'package:kitap_app/Pages/login_page.dart';
import 'package:kitap_app/Pages/sing_in_page.dart';

class NavigateLogOrSing extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:
      ListView(
        children: [

          Container(
            color: Colors.blue,
            width: 100,
            height: 50,
            child: Center(
              child:
              ListTile(
                title: Text(
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    'lorem ipsum s'

                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogInPage()),
                  );
                },
              ),
            ),
          ),


          SizedBox(height: 10),


          Container(
            color: Colors.blue,
            width: 100,
            height: 50,
            child: Center(
              child:
              ListTile(
                title: Text(
                    style: TextStyle(
                      fontSize: 15,

                    ),
                    'lorem ipsum'

                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SingInPage()),
                  );
                },
              ),
            ),
          ),

        ],
      )
      )
    );
  }
}
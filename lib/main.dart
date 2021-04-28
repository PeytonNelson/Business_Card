import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/'),
              ),
              Text('Peyton Nelson',
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontFamily: 'Lobster')),
              Text(
                'SOFTWARE ENGINEER',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[100],
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 15.0,
                width: 150.0,
                child: Divider(color: Colors.blueAccent[100]),
              ),
              InkWell(
                onTap: () => UrlLauncher.launch('tel:<6158875822>'),
                child: Card(
                  color: Colors.white,
                  margin:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.smartphone,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      '615-887-5822',
                      style: TextStyle(
                        fontFamily: "Source Sans Pro",
                        color: Colors.blue[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () =>
                    UrlLauncher.launch('mailto:<peytonnelson3@gmail.com>'),
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 7.5, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline,
                      color: Colors.blue[900],
                    ),
                    title: Text(
                      'peytonnelson3@gmail.com',
                      style: TextStyle(
                        fontFamily: "Source Sans Pro",
                        color: Colors.blue[900],
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

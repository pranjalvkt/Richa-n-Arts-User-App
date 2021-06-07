import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rich_n_art_official_app/developer_screen.dart';

void main() {
  runApp(
      AboutScreen()
  );
}

class AboutScreen extends StatelessWidget {

  static const String id = 'about_screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: new Text("About Rich'n Arts"),
          elevation: 15.0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              enableFeedback: true,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DeveloperScreen();
                }));
              },
              icon: Icon(
                Icons.info,
              ),
              iconSize: 30.0,
              color: Colors.white,
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/logo.png'),
                  //AssetImage('images/admin.jpg'),
              ),
              Text(
                'Rich\'n Arts',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Artist',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Image.asset(
                    'images/fb.png',
                    scale: 25.0,
                  ),
                  title: Text(
                    '@1203.richatripathi',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),

                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Image.asset(
                    'images/insta.png',
                    scale: 20.0,
                  ),
                  title: Text(
                    '@tripathi__richa',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),

                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    'richa.shandilya98@gmail.com',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Pratapgarh, India',
                    style: TextStyle(
                      color: Colors.teal,
                      fontFamily: 'Source Sans Pro',
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
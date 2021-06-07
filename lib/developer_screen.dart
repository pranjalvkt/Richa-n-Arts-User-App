import 'package:flutter/material.dart';

class DeveloperScreen extends StatelessWidget {

  static const String id = 'developer_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text("About"),
        elevation: 15.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Developer',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40.0,
                color: Colors.teal[100],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Contact',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40.0,
              width: 200.0,
              child: Divider(
                color: Colors.teal[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '+91 - 700 799 2624',
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
                  'pranjalvkt.srmcem@gmail.com',
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Image.asset(
                  'images/github.png',
                  scale: 20.0,
                ),
                title: Text(
                  'github.com/pranjalvkt',
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
                  'images/fb.png',
                  scale: 25.0,
                ),
                title: Text(
                  '@pranjalvktripathi',
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
                  scale: 17.0,
                ),
                title: Text(
                  '@pranjalvktripathi',
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
                  'images/browser.png',
                  scale: 25.0,
                ),
                title: Text(
                  'quillwrites.wordpress.org',
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
    );
  }
}

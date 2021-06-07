import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutApp extends StatefulWidget {

  static const String id = 'about_app';

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Details'
        ),
        elevation: 20.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'About this app',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 500,
              ),
              Text(
                'Official Rich\'n Arts App with high quality content for art enthusiasts. On Rich\'n Arts App, you can get latest post & updates. Create account with any of your email. No permission required !',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Create account with any of your email.',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'We respect your privacy and confidentiality. Your data is safe Now !',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Feed-style scrolling of cards for better experience.',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Interactive buttons and gestures. All new animations, you\'ve never seen before.',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 500,
                child: Divider(
                  color: Colors.white30,
                ),
              ),
              Text(
                'App info',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 500,
              ),
              Text(
                'Version - 1.0.1',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Released on - 10-05-2020',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Download Size - ',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'In app purchage - No',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Offered by - Rich\'n Arts',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 500.0,
                child: Divider(
                  color: Colors.white30,
                ),
              ),
              Text(
                'More info',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 500,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.filter_3, color: Colors.white70,),
                  Icon(Icons.add, color: Colors.white70,),
                ],
              ),
              Text(
                'Rated for 3+',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'User Interact',
                style: TextStyle(
                  color: Colors.white30,
                  fontWeight: FontWeight.bold,
                ),
              ),
//              SizedBox(
//                height: 20.0,
//                width: 500.0,
//                child: Divider(
//                  color: Colors.white30,
//                ),
//              ),
            ],
          ),
        ),
      ),
//      bottomNavigationBar: BottomAppBar(
//        color: Colors.black38,
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//          children: <Widget>[
//            Text(
//              'Developer Contact',
//              style: TextStyle(
//                color: Colors.white70,
//              ),
//            ),
//            SizedBox(
//              width: 100.0,
//            ),
//            IconButton(
//              onPressed: () {
//
//              },
//              icon: Icon(
//                Icons.arrow_forward_ios,
//                color: Colors.white70,
//              ),
//            ),
//          ],
//        ),
//
//      ),
    );
  }
}

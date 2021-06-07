import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'about_app.dart';
import 'posts.dart';
import 'about_screen.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';

  HomePage({this.onSignedOut});

  final VoidCallback onSignedOut;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Posts> postsList = [];

  @override
  void initState() {

    super.initState();

    DatabaseReference postsRef = FirebaseDatabase.instance.reference().child('Posts');
    postsRef.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      postsList.clear();

      for(var individualKey in KEYS) {
        Posts posts = Posts(

          DATA[individualKey]['image'],
          DATA[individualKey]['description'],
          DATA[individualKey]['date'],
          DATA[individualKey]['time'],
        );
        postsList.add(posts);
      }
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        title: Text(
          'Rich\'n Arts News Feed', //TODO suggestion required.
        ),
        leading: IconButton(
          enableFeedback: true,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return AboutApp();
            }));
          },
          icon: Icon(
            Icons.info,
          ),
          iconSize: 30.0,
          color: Colors.white,
        ),
      ),
      body: Container(
        child: postsList.length == 0 ? Text('No Post available') : ListView.builder(
          itemCount: postsList.length,
          itemBuilder: (_, index) {
            return PostsUI(
              postsList[index].image,
              postsList[index].description,
              postsList[index].date,
              postsList[index].time,
            );
          },
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        elevation: 15.0,
        color: Colors.deepPurple,
        child: Container(

          margin: EdgeInsets.only(left: 70.0, right: 70.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                enableFeedback: true,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.exit_to_app,
                ),
                iconSize: 30.0,
                color: Colors.white,
              ),
//              IconButton(
//                enableFeedback: true,
//                onPressed: (){
//                  Navigator.push(context, MaterialPageRoute(builder: (context){
//                    return UploadPhotoPage();
//                  }));
//                },
//                icon: Icon(
//                  Icons.add_a_photo,
//                ),
//                iconSize: 50.0,
//                color: Colors.white,
//              ),
              IconButton(
                enableFeedback: true,
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return AboutScreen();
                  }));
                }, //TODO: ABOUT OWNER AND DEVELOPER.
                icon: Icon(
                  Icons.supervisor_account,
                ),
                iconSize: 30.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget PostsUI(String image, String description, String date, String time) {
  return Card(
    elevation: 10.0,
    margin: EdgeInsets.all(15.0),
    child: Container(
      padding: EdgeInsets.all(14.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                date,
                style: TextStyle(fontSize: 7.0),
                textAlign: TextAlign.center,
              ),
              Text(
                time,
                style: TextStyle(fontSize: 7.0),
//                Theme.of(context).textTheme.subtitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Image.network(image, fit: BoxFit.cover,),
          SizedBox(height: 10.0,),
          Text(
            description,
            style: TextStyle(fontWeight: FontWeight.bold),
            //Theme.of(context).textTheme.subhead,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}

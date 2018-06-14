import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() {
    // TODO: implement createState
    return new ProfileState();
  }

}

class ProfileState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0),
            child: new Text("Name", style: new TextStyle(color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0),
            child: new Text("test1",style: new TextStyle(fontSize: 14.0),),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0),
            child: new Text("Phone", style: new TextStyle(color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold),),
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 15.0,bottom: 15.0),
            child: new Text("234234234",style: new TextStyle(fontSize: 14.0)),
          ),
          new Center(

            child: new Container(
              height: 40.0,
              width: 100.0,
              child: new RaisedButton(onPressed: () {},
                child: new Center(
                  child: new Text("Edit",style: new TextStyle(color: Colors.white),),
                ),
                color: Colors.blue,

              ),
            ),
          )
        ],
      ),
    );
  }

}
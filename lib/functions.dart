import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_crushes_version3a/main.dart';

void showGirlMessage(BuildContext context, int number){
  var alert = new AlertDialog(
    title: new Text(girlnames[number]),
    content: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Image.asset(girlsPictures[girlnames[number]]),
        new Text(girlsDescription[girlnames[number]], textAlign: TextAlign.center,)
      ],
    ),
    actions: <Widget>[
      new FlatButton(
          onPressed: () => Navigator.pop(context),
          child: new Text("Okay"))
    ],
  );
  showDialog(context: context, builder: (context) => alert);
}
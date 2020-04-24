import 'package:flutter/material.dart';

List girlnames = ["Racheal Wilson","Efua Aidoo","Deborah Line Seka","Georgina Thompson","Eugenia Elikem Lawoe","Portia Esinam Attivo"];
Map girlsDescription = {
  girlnames[0]:"First Girl I had a crush on",
  girlnames[1]:"Second Girl I had a crush on",
  girlnames[2]:"Third Girl I had a crush on",
  girlnames[3]:"Fourth Girl I had a crush on",
  girlnames[4]:"Fifth Girl I had a crush on",
  girlnames[5]:"Last Girl I had a crush on"
};
Map girlsPictures = {
  girlnames[0]:"images/Racheal.jpg",
  girlnames[1]:"images/Efua.jpg",
  girlnames[2]:"images/Deborah.jpg",
  girlnames[3]:"images/Georgina.jpg",
  girlnames[4]:"images/Eugenia.jpg",
  girlnames[5]:"images/Portia.jpg"
};

void main(){
  runApp(new MaterialApp(
    title: "My Crushes Version 3i",
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("MyCrushes"),
        backgroundColor: Colors.green,
      ),
      body: new ListView.builder(
          itemCount: girlnames.length,
          itemBuilder: (BuildContext context, int indexValue){
            return new Column(
              children: <Widget>[
                new Divider(height: 6.0),
                new ListTile(
                  title: new Text(girlnames[indexValue]),
                  subtitle: new Text(girlsDescription[girlnames[indexValue]]),
                  leading: new CircleAvatar(
                    child: new Image.asset(girlsPictures[girlnames[indexValue]],
                        width: 40,
                        fit: BoxFit.fill,),
                  ),
                )
              ],
            );
          }),
    ),
  ));
}
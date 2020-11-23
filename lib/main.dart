import 'package:flutter/material.dart';
import 'package:flutter_json_http/local_json.dart';

import 'remote_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Json ve Api"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Local Json"),
              color: Colors.green,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LocalJsonKullanimi()));
              },
            ),
            RaisedButton(
              child: Text("Remote Json"),
              color: Colors.orange,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RemoteApiKullanimi()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

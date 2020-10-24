import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giphy/utils/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;
  // construtor //
  GifPage(this._gifData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            _gifData["title"],
            style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){MyShare().share(_gifData["images"]["fixed_height"]["url"]);},
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(_gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}

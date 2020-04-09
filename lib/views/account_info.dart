import 'package:corona_helpline/widgets/title.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatefulWidget {
  @override
  _AccountInfoState createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title(first: "Donate", second: "Money"),
        backgroundColor: Colors.white,
        elevation: 20,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        margin: EdgeInsets.only(top: 20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[



          ],
        ),
      ),
    );
  }
}

import 'package:corona_helpline/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DonatePage extends StatefulWidget {
  @override
  _DonatePageState createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: title(first: "Donate", second: " Items"),
        backgroundColor: Colors.white,
        elevation: 20,
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Material(
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text(
                            "Enter details and items.",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 1, 20, 10),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                labelText: "Enter Name",
                              ),
                              autofocus: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              keyboardType: TextInputType.phone,
                              maxLength: 10,
                              decoration: InputDecoration(
                                labelText: "Enter Phone",
                              ),
                              autofocus: true,
                            ),
                            TextField(
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                labelText: "Enter Pickup Address",
                              ),
                              autofocus: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              keyboardType: TextInputType.multiline,
                              decoration: InputDecoration(
                                labelText: "Enter Items Name",
                              ),
                              autofocus: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              elevation: 10,
                              textColor: Colors.white,
                              color: Colors.green,
                              child: Text("SUBMIT"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

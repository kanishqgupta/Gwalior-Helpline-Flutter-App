import 'package:flutter/material.dart';

Widget title({@required String first,@required String second})
{

  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        first,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      Text (
        second,
        style: TextStyle(
          color: Colors.green
        ),
      )
    ],
  );
}
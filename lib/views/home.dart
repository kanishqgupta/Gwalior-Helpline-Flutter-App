import 'package:corona_helpline/views/account_info.dart';
import 'package:corona_helpline/views/donate_item.dart';
import 'package:corona_helpline/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' ;

class HomeState extends StatefulWidget {
  @override
  _HomeStateState createState() => _HomeStateState();
}

class _HomeStateState extends State<HomeState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title(first: "Corona", second: "Helpline"),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 20,


      ),
      body: Container(

        decoration: new BoxDecoration(
          color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.center,
              child: Card(
                elevation: 5,
               color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(

                    child: Text("Corona Update", style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),),
                    padding: EdgeInsets.symmetric(vertical:60, horizontal:100 ),


                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
         Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DonatePage()));
          },
          child: Card(
            
            elevation: 10,
            color: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Container(

                child: Text("Donate Items", style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                ),),
                padding: EdgeInsets.symmetric(vertical:30, horizontal:100 ),


              ),
            ),
          ),
        ),
         ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>AccountInfo()));
                },
                child: Card(

                  elevation: 10,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Container(

                      child: Text("Donate Money", style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                      padding: EdgeInsets.symmetric(vertical:30, horizontal:100 ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => launch("http://www.google.com"),

        elevation: 10,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.call,
          color: Colors.white,
        ),
      ),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => DonatePage()));
}

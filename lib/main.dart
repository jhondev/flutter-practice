import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final Color appColor = Colors.teal;
final Color lightColor = Colors.teal.shade100;
final Color textColor = Colors.teal.shade900;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Scaffold(
        backgroundColor: appColor,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/my_avatar.png")),
              Text(
                "Jhondev",
                style: TextStyle(
                    fontFamily: "Pacifico",
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 55),
              ),
              Text("SOFTWARE DEVELOPER",
                  style: TextStyle(
                    fontFamily: "Source Sans Pro",
                    color: lightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  )),
              Divider(
                indent: 100,
                endIndent: 100,
                thickness: 1.2,
                color: lightColor,
              ),
              IconTextBox(
                icon: Icons.phone,
                text: "+57 123 456 789",
                color: textColor,
              ),
              IconTextBox(
                icon: Icons.mail,
                text: "jhondev@email.com",
                color: textColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class IconTextBox extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  IconTextBox({Key key, this.icon, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          color: color,
        ),
        title: Text(text, style: TextStyle(color: color)),
      ),
    );
  }
}

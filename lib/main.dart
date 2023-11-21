import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomes(),
  ));
}

class MyHomes extends StatelessWidget {
  const MyHomes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[700],
      appBar: AppBar(title: Text("app")),
      body: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
                radius: 50, backgroundImage: AssetImage("assets/images/a.png")),
            Text(
              "Hanan FaHAD",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              "application Devolp",
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            dara(value: "+51552455", icon: Icons.phone),
            dara(value: "test@gmail.com", icon: Icons.mail),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.cyan,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "test@gmail.com",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class dara extends StatelessWidget {
  final String value;
  final IconData icon;

  const dara({required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      color: Colors.white,
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.cyan,
          ),
          SizedBox(width: 15),
          Text(
            value,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

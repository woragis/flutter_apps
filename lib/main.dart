import 'package:flutter/material.dart';

// Static Variables
const String username = "Chun-Li";
const String email = "chunli@streetfight.com";

void main() {
  runApp(const MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          title: const Text("Ninja Card ID"),
          backgroundColor: Colors.black12,
          centerTitle: true,
          elevation: 0.0,
        ),
        floatingActionButton: const Text("Hi"),
        body: const Padding(
          padding: EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("assets/chun-li.jpeg"),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey,
              ),
              Text(
                "NAME",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                username,
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                "8",
                style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Row(children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                Text("jezreel.veloso@gmail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    ))
              ])
            ],
          ),
        ));
  }
}

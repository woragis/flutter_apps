import 'package:flutter/material.dart';

// Static Variables
const nameLabel = "NAME";

void main() {
  runApp(const MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  double bodyPadding = 40.0;
  String avatarPath = "assets/chun-li.jpeg";
  double dividerHeight = 60.0;
  double sizedBoxHeight = 10.0;
  String username = "Chun-Li";
  String email = "chunli@streetfight.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
        appBar: AppBar(
          title: const Text("Ninja Card ID"),
          backgroundColor: const Color.fromARGB(255, 41, 41, 41),
          centerTitle: true,
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel++;
            });
          },
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: EdgeInsets.all(bodyPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(avatarPath),
              ),
              Divider(
                height: dividerHeight,
                color: Colors.grey,
              ),
              const Text(
                nameLabel,
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: sizedBoxHeight),
              Text(
                username,
                style: const TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: sizedBoxHeight),
              Text(
                "$ninjaLevel",
                style: const TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: sizedBoxHeight),
              Row(children: <Widget>[
                const Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                Text(email,
                    style: const TextStyle(
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

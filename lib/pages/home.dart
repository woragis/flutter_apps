import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  dynamic data = {};
  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context)?.settings.arguments;
    String backgroundImage = data["isDayTime"] ? "day.png" : "night.png";
    Color backgroundColor = data["isDayTime"] ? Colors.blue : Colors.indigo;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/$backgroundImage"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                IconButton(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, "/location");
                    setState(() {
                      data = {
                        "time": result["time"],
                        "location": result["location"],
                        "isDayTime": result["isDayTime"],
                        "flag": result["flag"],
                      };
                    });
                  },
                  icon: const Icon(Icons.edit_location),
                  color: Colors.white,
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data["location"],
                      style: const TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  data["time"],
                  style: const TextStyle(
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

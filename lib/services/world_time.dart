import "package:http/http.dart";
import "dart:convert";
import "package:intl/intl.dart";

class WorldTime {
  String location; // location for the UI
  String flag; // URL to access flag icon
  String url; // location URL for api endpoint
  var isDayTime;
  var time; // the time in that location

  WorldTime({required this.location, required this.flag, required this.url});
  // WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    var apiUri = Uri.http("worldtimeapi.org", "api/timezone/$url");
    try {
      Response response = await get(apiUri);
      Map data = jsonDecode(response.body);
      String datetime = data["datetime"];
      String offset = data["utc_offset"].substring(1, 3);
      String sign = data["utc_offset"].substring(0, 1);
      DateTime now = DateTime.parse(datetime);
      if (sign == "+") {
        now = now.add(Duration(hours: int.parse(offset)));
      } else {
        now = now.add(Duration(hours: int.parse(offset) * -1));
      }
      time = DateFormat.jm().format(now);
      isDayTime = now.hour > 5 && now.hour < 18 ? true : false;
    } catch (e) {
      print("Error fetching time data");
      print(e);
      time = "could not retrieve time";
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
void main(){
  runApp(MaterialApp(
    home: Notify(),
  ));
}
class Notify extends StatefulWidget {
  const Notify({Key key}) : super(key: key);

  @override
  _NotifyState createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  FlutterLocalNotificationsPlugin flnp = new FlutterLocalNotificationsPlugin();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () async{
            const AndroidNotificationDetails androidPlatformChannelSpecifics =
            AndroidNotificationDetails(
                '#123', 'Spotify', 'Music Awaits You!',
                importance: Importance.Max,
                priority: Priority.High,
                showWhen: false);
            const NotificationDetails platformChannelSpecifics =
            NotificationDetails(AndroidNotificationDetails('#123', 'Spotify', 'Music Awaits You!'),IOSNotificationDetails());
            await flnp.show(
                0, 'Spotify', 'Bollywood Beats', platformChannelSpecifics,
                payload: 'item x');
          }, child: Text("Generate")),
        ],
      ),
    );
  }
}

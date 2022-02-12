import 'package:flutter_chat_app/myapp.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:flutter/material.dart';

final apiKey = "gty5q9dx9vtv";
final userToken =
    "rs6d5my3mf2338sntusn44kqjcumexcyu62w9u6mdtks7hwa6e8bz67tt6vzcutc";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //stream chat
  final client = StreamChatClient(apiKey, logLevel: Level.INFO);
  //current user
  await client.connectUser(User(id: "chhaya-singh"),
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoiY2hoYXlhLXNpbmdoIn0.W04Qq1gRMg_am0qDgHsGXcYoC5LeTouDV7nGVuP0vp4");
  //Get Channel
  final channel = client.channel("messaging", id: "flutter-Deveplors");
  //watch channel
  await channel.watch();

  runApp(MyApp(client: client, channel: channel));
}

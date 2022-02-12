import 'package:flutter/material.dart';
import 'package:flutter_chat_app/channel_page.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client, required this.channel})
      : super(key: key);
  final StreamChatClient client;
  final Channel channel;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return StreamChat(client: client, child: child);
      },
      home: StreamChannel(child: ChannelPage(), channel: channel),
    );
  }
}

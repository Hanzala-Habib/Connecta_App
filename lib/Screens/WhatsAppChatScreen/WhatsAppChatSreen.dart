import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/all_colors/GlobalColors.dart';
class Whatsappchatsreen extends StatefulWidget {
  const Whatsappchatsreen({super.key});

  @override
  State<Whatsappchatsreen> createState() => _WhatsappchatsreenState();
}

class _WhatsappchatsreenState extends State<Whatsappchatsreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.AppBarColor,

        title:
        Text("Hanzala Habib", style: TextStyle(color: Colors.white, fontSize: 20)),
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back, size: 32,
          color: Colors.white,)),
      ),
      body: Chat(
          messages: _messages, onSendPressed: _handleSendPressed, user: _user),
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime
          .now()
          .millisecondsSinceEpoch,
      id: "id1",
      text: message.text,
    );
    _addMessage(textMessage);
  }
}


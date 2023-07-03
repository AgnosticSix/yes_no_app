import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWhom: FromWhom.me),
    Message(text: 'Ya regresaste del trabajo?', fromWhom: FromWhom.me)
  ];

  Future<void> sendMessage(String text) async {
    final newMessage = Message(text: text, fromWhom: FromWhom.me);
    messageList.add(newMessage);

    notifyListeners();
  }
}
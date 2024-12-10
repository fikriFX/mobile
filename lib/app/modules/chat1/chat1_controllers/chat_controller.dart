import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Controller
class ChatController extends GetxController {
  var messages = <String>[].obs; // List pesan yang akan ditampilkan
  TextEditingController messageController = TextEditingController();

  void sendMessage() {
    if (messageController.text.trim().isNotEmpty) {
      messages.add(messageController.text.trim());
      messageController.clear();
    }
  }
}

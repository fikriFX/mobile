// View
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mychact/app/modules/chat1/chat1_bindings/chat1_binding.dart';
import 'package:mychact/app/modules/chat1/chat1_controllers/chat_controller.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ChatController chatController = Get.find<ChatController>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                reverse: true, // Untuk menampilkan pesan terbaru di bawah
                itemCount: chatController.messages.length,
                itemBuilder: (context, index) {
                  final message = chatController
                      .messages[chatController.messages.length - 1 - index];
                  return Align(
                    alignment:
                        Alignment.centerRight, // Pesan selalu di sisi kanan
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 48, 0, 138),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        message,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: chatController.messageController,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                FloatingActionButton(
                  onPressed: chatController.sendMessage,
                  child: Icon(Icons.send, color: Colors.white),
                  backgroundColor: Colors.green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialBinding: ChatBinding(),
    home: ChatScreen(),
  ));
}

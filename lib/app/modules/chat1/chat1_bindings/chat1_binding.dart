// Binding
import 'package:get/get.dart';
import 'package:mychact/app/modules/chat1/chat1_controllers/chat_controller.dart';

class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatController>(() => ChatController());
  }
}

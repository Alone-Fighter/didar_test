import 'package:get/get.dart';

class NotificationController extends GetxController {
  static NotificationController get to => Get.find();

  final _notificationData = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get notificationData => _notificationData.value;



  void updateNotificationData(Map<String, dynamic> data) {
    _notificationData.value = data;
    update();
  }
}

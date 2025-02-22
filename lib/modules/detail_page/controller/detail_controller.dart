import 'package:didar_test/modules/notification/controller/notification_controller.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  final NotificationController notificationController = Get.find<NotificationController>();
  final _notificationData = Rx<Map<String, dynamic>>({});
  Map<String, dynamic> get notificationData => _notificationData.value;

  @override
  void onInit() {
    super.onInit();
    _notificationData.value = notificationController.notificationData;
  }
}

import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class HomeController extends GetxController{
  var isAccessPermission = false.obs;


  void checkAccess()async{
    isAccessPermission.value = await Permission.notification.isGranted;
  }

  void accessPermission()async{
    await Permission.notification.request();
    checkAccess();
  }

  @override
  void onInit() {
    super.onInit();
    checkAccess();
  }
}
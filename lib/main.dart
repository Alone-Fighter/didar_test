import 'package:didar_test/config/theme.dart';
import 'package:didar_test/modules/detail_page/views/detail_screen.dart';
import 'package:didar_test/modules/home_page/views/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'modules/detail_page/controller/detail_controller.dart';
import 'modules/notification/controller/notification_controller.dart';
import 'package:didar_test/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupServiceLocator();
  Get.put(NotificationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: AppTheme.dark,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
        ),
        GetPage(
          name: '/detail',
          page: () => const DetailScreen(),
          binding: BindingsBuilder(() {
            Get.lazyPut(
              () => DetailController(),
            );
          }),
        ),
      ],
      home: HomeScreen(),
    );
  }
}

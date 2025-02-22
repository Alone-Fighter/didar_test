import 'package:didar_test/config/res/colors.dart';
import 'package:didar_test/config/styles.dart';
import 'package:didar_test/modules/home_page/components/custm_button.dart';
import 'package:didar_test/modules/home_page/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(
              'Didar Test',
              style: txt.textWhite,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Status of Permission :',
                  style: txt.txt2Xl.txtBold,
                ),
                h(
                  5,
                ),
                Obx(
                  () {
                    return Text(
                      controller.isAccessPermission.value
                          ? "Permission is Granted"
                          : "Permission is Denied",
                      style: txt.txtMd.txtBold,
                    );
                  },
                ),
                h(
                  20,
                ),
                Obx(
                  () => controller.isAccessPermission.value
                      ? SizedBox()
                      : CustomButton(
                          text: 'Permission',
                          callBack: () {
                            controller.accessPermission();
                          },
                          height: 50,
                          width: 150,
                          colorText: ColorsApp.white,
                          backColor: Colors.blueAccent,
                          hasRow: false,
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

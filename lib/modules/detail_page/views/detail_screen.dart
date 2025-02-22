import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/detail_controller.dart';
import '../../../config/styles.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Notification Details', style: txt.textWhite),
      ),
      body: Center(
        child: Obx(() => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Notification Data', style: txt.txt2Xl.txtBold),
                h(20),
                if (controller.notificationData.isNotEmpty) ...[
                  ...controller.notificationData.entries.map(
                    (entry) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        '${entry.key}: ${entry.value}',
                        style: txt.txtMd.txtBold,
                      ),
                    ),
                  ),
                ] else
                  Text(
                    'No notification data available',
                    style: txt.txtMd.txtBold,
                  ),
              ],
            )),
      ),
    );
  }
}

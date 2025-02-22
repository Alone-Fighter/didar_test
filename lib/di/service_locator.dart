import 'package:get_it/get_it.dart';
import '../services/notification_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Then register NotificationService
  if (!getIt.isRegistered<NotificationService>()) {
    getIt.registerSingleton<NotificationService>(NotificationService());
    await getIt<NotificationService>().initialize();
  }
}

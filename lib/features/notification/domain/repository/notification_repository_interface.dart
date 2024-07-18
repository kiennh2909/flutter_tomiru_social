import 'package:tomiru_social_flutter/interface/repository_interface.dart';

abstract class NotificationRepositoryInterface extends RepositoryInterface {
  void saveSeenNotificationCount(int count);
  int? getSeenNotificationCount();
  List<int> getNotificationIdList();
  void addSeenNotificationIdList(List<int> notificationList);
}

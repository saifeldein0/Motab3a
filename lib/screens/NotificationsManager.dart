import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationManager {
  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('logo'); // Use the correct icon name
    final InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );

    tz.initializeTimeZones(); // Initialize time zones

    _scheduleDailyNotifications();
  }

  static Future<void> _scheduleDailyNotifications() async {
    final AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'daily_channel_id', // Change this to your channel ID
      'Daily Notifications', // Change this to your channel name
      importance: Importance.max,
      priority: Priority.high,
    );
    final NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    final List<DailyNotification> dailyNotifications = [
      DailyNotification(
        id: 1,
        title: 'Daily Notification 1',
        message: 'testing1',
        time: TimeOfDay(hour: 20, minute: 00),
      ),
      DailyNotification(
        id: 2,
        title: 'Daily Notification 2',
        message: 'testing2',
        time: TimeOfDay(hour: 20, minute: 15),
      ),
    ];

    for (var dailyNotification in dailyNotifications) {
      final tz.TZDateTime scheduledDate = _nextInstanceOfDayAndTime(
        dailyNotification.time.hour,
        dailyNotification.time.minute,
      );

      await flutterLocalNotificationsPlugin.zonedSchedule(
        dailyNotification.id,
        dailyNotification.title,
        dailyNotification.message,
        scheduledDate,
        platformChannelSpecifics,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: dailyNotification.id.toString(), // Pass the notification ID as payload
      );
    }
  }

  // ... Rest of the code remains the same ...

  static tz.TZDateTime _nextInstanceOfDayAndTime(int hour, int minute) {
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day,
      hour,
      minute,
    );

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }

    return scheduledDate;
  }
}

class DailyNotification {
  final int id;
  final String title;
  final String message;
  final TimeOfDay time;

  DailyNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.time,
  });
}

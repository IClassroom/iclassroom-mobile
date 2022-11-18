import 'package:iclassroom/api/models/user.dart';

class Class {
  final List<String> classDay = [];
  final List<String> times = [];
  final String className;
  final List<User> users = [];

  Class({required this.className, List<String>? days, List<String>? times, List<User>? users}) {
    classDay.addAll(days ?? []);
    this.times.addAll(times ?? []);
    this.users.addAll(users ?? []);
  }
}
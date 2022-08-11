import 'package:intl/intl.dart';
import 'package:get/get.dart';

class CDate{
  final _date = DateFormat('yyyy-MM-dd').format(DateTime(2000-01-01)).obs;
  String get date => _date.value;
  setDate(n) => _date.value = n;
}
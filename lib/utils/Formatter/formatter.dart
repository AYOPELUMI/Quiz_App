import 'package:intl/intl.dart';

class AppFormatter{
  AppFormatter._();
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }
}
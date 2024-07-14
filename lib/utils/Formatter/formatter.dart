import 'package:intl/intl.dart';

class AppFormatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat('dd-mm-yyyy').format(date);
  }
}
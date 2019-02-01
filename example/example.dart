import 'package:time_formatter/time_formatter.dart';

String formatted = formatTime(
    DateTime.now().subtract(Duration(hours: 2)).millisecondsSinceEpoch);

void main() {
  print(formatted);
  // 2 hours
}

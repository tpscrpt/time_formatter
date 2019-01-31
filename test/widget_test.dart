import "package:test/test.dart";

import 'package:time_formatter/time_formatter.dart';

void main() {
  group("days", () {
    test("1 day", () {
      String value = formatTime(
        DateTime.now().subtract(
          Duration(
            days: 29
          )
        ).millisecondsSinceEpoch
      );

      expect(
        value,
        "1 day"
      );
    });
  });
  group("days", () {
    
  });
  group("days", () {

  });
  group("weeks", () {
    
  });
  group("months", () {
    
  });
  group("years", () {
    
  });

  test("1 day", () {
    print(
      formatTime(DateTime.now().subtract(Duration(days: 1)).millisecondsSinceEpoch)
    );
  });
  test("1 week", () {

  });
}
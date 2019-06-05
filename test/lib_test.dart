import 'dart:math';

import "package:test/test.dart";

import 'package:time_formatter/time_formatter.dart';

void main() {
  group("seconds", () {
    test("Just now for less than 2000ms", () {
      String value = formatTime(DateTime.now()
          .subtract(Duration(milliseconds: 1800))
          .millisecondsSinceEpoch);

      expect(value, "Just now");
    });
    test("Multiple seconds", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  milliseconds:
                      Random().nextInt(57999) + 2000 // seconds are truncated
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "seconds");
      });
    });
  });
  group("minutes", () {
    test("1 minute", () {
      String value = formatTime(
          DateTime.now().subtract(Duration(minutes: 1)).millisecondsSinceEpoch);

      expect(value, "1 minute ago");
    });
    test("Multiple minutes", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  seconds: Random().nextInt(3479) + 120 // minutes are truncated
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "minutes");
      });
    });
  });
  group("hours", () {
    test("1 hour", () {
      String value = formatTime(
          DateTime.now().subtract(Duration(hours: 1)).millisecondsSinceEpoch);

      expect(value, "1 hour ago");
    });
    test("Multiple hours", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  minutes: Random().nextInt(1319) + 120 // hours are truncated
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "hours");
      });
    });
  });
  group("days", () {
    test("1 day", () {
      String value = formatTime(
          DateTime.now().subtract(Duration(days: 1)).millisecondsSinceEpoch);

      expect(value, "1 day ago");
    });
    test("Multiple days", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  hours: Random().nextInt(119) + 48 // days are truncated
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "days");
      });
    });
  });
  group("weeks", () {
    test("1 week", () {
      String value = formatTime(
          DateTime.now().subtract(Duration(days: 7)).millisecondsSinceEpoch);

      expect(value, "1 week ago");
    });
    test("Multiple weeks", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  days: Random().nextInt(14) + 14 // weeks are truncated
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "weeks");
      });
    });
  });
  group("months", () {
    test("1 month", () {
      String value = formatTime(
          DateTime.now().subtract(Duration(days: 28)).millisecondsSinceEpoch);

      expect(value, "1 month ago");
    });
    test("Multiple months", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  days: Random().nextInt(319) +
                      46 // months are rounded to the nearest
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "months");
      });
    });
  });
  group("years", () {
    test("1 year", () {
      String value = formatTime(
          DateTime.now().subtract(Duration(days: 365)).millisecondsSinceEpoch);

      expect(value, "1 year ago");
    });
    test("Multiple years", () {
      List<int> cases = List(500)
          .map(((_) => DateTime.now()
              .subtract(Duration(
                  days: Random().nextInt(50000) + 365 * 2 // years are truncated
                  ))
              .millisecondsSinceEpoch))
          .toList();
      cases.forEach((test) {
        String value = formatTime(test);
        //print(DateTime.now().millisecondsSinceEpoch - test);
        //print(value);
        expect(value.split(" ")[1], "years");
      });
    });
  });
  test("example.dart", () {
    String formatted = formatTime(
        DateTime.now().subtract(Duration(hours: 2)).millisecondsSinceEpoch);

    expect(formatted, "2 hours ago");
  });
}

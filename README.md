# Time Formatter in Dart
This library takes UNIX timestamps and converts them to pretty, human-readable time formats.

## Using
Add the package to your pubspec.yaml
```yaml
dependencies:
  time_formatter: ^1.0.0
```
Import the library in a .dart file
```dart
import 'package:time_formatter/time_formatter.dart';
```
Format an arbitrary UNIX timestamp (int type) with formatTime()
```
String formatted = formatTime(1548979724964)
```

## Format
Here's a mini truth table for the format of the value returned by the function:
 > < 1 second         : "Just now"
 > < 60 seconds       : "X seconds" (2-59)
 > < 2 minutes        : "1 minute" 
 > < 60 minutes       : "X minutes" (2-59)
 > < 2 hours          : "1 hour"
 > < 24 hours         : "X hours" (2-23)
 > < 2 days           : "1 day"
 > < 7 days           : "X days" (2-6)
 > < 2 weeks          : "1 week"
 > < 28 days          : "X weeks" (2-3)
 > < 30.44 * 1.5 days : "1 month"
 > < 365 - 15.22 days : "X months" (2-12)
 > < 730 days         : "1 year"
 > Rest               : "X years"

I decided to use truncate() for everything except months, as they can yield scenarios where something was stamped 59 days ago, but it still returns "1 month" (for example). Monthly timestamps are rounded to the nearest month.

## Contributing
If you spot a bug or would like to provide additional functionality, you are more than welcome to submit an issue or pull request.

## License
GPL 2.0, as per recommendation.

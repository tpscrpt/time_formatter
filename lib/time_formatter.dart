String formatTime(int timestamp) {
  int difference = DateTime.now().millisecondsSinceEpoch - timestamp;

  if (difference < 60000) {
    return countSeconds(difference);
  }

  if (difference < 3600000) {
    return countMinutes(difference);
  }

  else if (difference < 86400000) {
    return countHours(difference);
  }

  else if (difference < 604800000) {
    return countDays(difference);
  }

  else if (difference / 1000 < 2419200) {
    return countWeeks(difference);
  }

  else if (difference / 1000 < 31536000) {
    return countMonths(difference);
  }

  else return countYears(difference);
}

String countSeconds(int difference) {
  int count = (difference / 1000).truncate();
  return count > 1 ? count.toString() + ' seconds' : 'Just now';
}

String countMinutes(int difference) {
  int count = (difference / 60000).truncate();
  return count.toString() + (count > 1 ? ' minutes' : ' minute');
}

String countHours(int difference) {
  int count = (difference / 3600000).truncate();
  return count.toString() + (count > 1 ? ' hours' : ' hour');
}

String countDays(int difference) {
  int count = (difference / 86400000).truncate();
  return count.toString() + (count > 1 ? ' days' : ' day');

}

String countWeeks(int difference) {
  int count = (difference / 604800000).truncate();
  if (count > 3) {
    return '1 month';
  }
  return count.toString() + (count > 1 ? ' weeks' : ' week');
}

String countMonths(int difference) {
  int count = (difference / 2628003000).round();
  count = count > 0 ? count : 1;
  if (count > 12) {
    return '1 year';
  }
  return count.toString() + (count > 1 ? ' months': ' month');
}

String countYears(int difference) {
  if ((difference > 0) != true) {
    return "";
  }
  int count = (difference / 31536000000).truncate();
  return count.toString() + (count > 1 ? ' years' : ' year');
}




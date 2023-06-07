String getValueOrDash(int value) {
  return value == 0 ? "--" : value.toString();
}

String zeroYear(int value) {
  return value == 0 ? ' year' : ' years';
}

String zeroMonth(int value) {
  return value == 0 ? ' month' : ' months';
}

String zeroDay(int value) {
  return value == 0 ? ' day' : ' days';
}

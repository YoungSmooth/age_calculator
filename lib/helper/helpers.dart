String getValueOrDash(int value) {
  return value == 0 ? "--" : value.toString();
}

String zeroYear(int value) {
  return (value == 0 || value == 1) ? ' year' : ' years';
}

String zeroMonth(int value) {
  return (value == 0 || value == 1) ? ' month' : ' months';
}

String zeroDay(int value) {
  return (value == 0 || value == 1) ? ' day' : ' days';
}

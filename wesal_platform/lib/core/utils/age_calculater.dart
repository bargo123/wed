class AgeCalculater {
  static String calculateAge(String birthDate) {
    final today = DateTime.now();
    final birthDateParsed = DateTime.parse(birthDate);
    int age = today.year - birthDateParsed.year;

    if (today.month < birthDateParsed.month ||
        (today.month == birthDateParsed.month &&
            today.day < birthDateParsed.day)) {
      age--;
    }

    return age.toString();
  }
}

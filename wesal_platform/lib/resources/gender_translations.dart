class GenderTranslations {
  static const Map<String, Map<String, String>> translations = {
    'en': {'male': 'Male', 'female': 'Female'},
    'ar': {'male': 'ذكر', 'female': 'أنثى'},
  };

  static String getTranslation(String language, String gender) {
    return translations[language]?[gender] ?? gender;
  }

  static List<String> getGenders() {
    return translations["en"]!.keys.toList();
  }
}

class SmokerTranslation {
  static const Map<String, Map<String, String>> translations = {
    'en': {'yes': 'Yes', 'no': 'No'},
    'ar': {'yes': 'نعم', 'no': 'لا'},
  };

  static String getTranslation(String language, String gender) {
    return translations[language]?[gender] ?? gender;
  }

  static List<String> getGenders() {
    return translations["en"]!.keys.toList();
  }
}

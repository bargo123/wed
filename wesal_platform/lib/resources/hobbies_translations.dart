class HobbiesTranslations {
  static const Map<String, Map<String, Map<String, String>>> translations = {
    'arts': {
      'en': {
        'dancing': 'Dancing 💃',
        'writing': 'Writing 📝',
        'singing': 'Singing 🎤',
        'painting': 'Painting 🎨',
        'filming': 'Filming 📹',
        'photography': 'Photography 📸',
        'sculpting': 'Sculpting 🗿',
        'architecture': 'Architecture 🏛️',
        'theater': 'Theater 🎭',
        'literature': 'Literature 📚',
        'poetry': 'Poetry 📜',
        'music': 'Music ♫',
        'makeup': 'Makeup 💄',
        'fashion_design': 'Fashion design 👗',
        'standup_comedy': 'Standup Comedy 😆',
      },
      'ar': {
        'dancing': 'الرقص 💃',
        'writing': 'الكتابة 📝',
        'singing': 'الغناء 🎤',
        'painting': 'الرسم 🎨',
        'filming': 'التصوير السينمائي 📹',
        'photography': 'التصوير الفوتوغرافي 📸',
        'sculpting': 'النحت 🗿',
        'architecture': 'الهندسة المعمارية 🏛️',
        'theater': 'المسرح 🎭',
        'literature': 'الأدب 📚',
        'poetry': 'الشعر 📜',
        'music': 'الموسيقى ♫',
        'makeup': 'المكياج 💄',
        'fashion_design': 'تصميم الأزياء 👗',
        'standup_comedy': 'الكوميديا المسرحية 😆',
      },
    },
    'sports': {
      'en': {
        'football': 'Football ⚽',
        'basketball': 'Basketball 🏀',
        'tennis': 'Tennis 🎾',
        'swimming': 'Swimming 🏊',
        'running': 'Running 🏃',
        'cycling': 'Cycling 🚴',
        'yoga': 'Yoga 🧘',
        'gym': 'Gym 💪',
        'boxing': 'Boxing 🥊',
        'martial_arts': 'Martial Arts 🥋',
      },
      'ar': {
        'football': 'كرة القدم ⚽',
        'basketball': 'كرة السلة 🏀',
        'tennis': 'التنس 🎾',
        'swimming': 'السباحة 🏊',
        'running': 'الجري 🏃',
        'cycling': 'ركوب الدراجات 🚴',
        'yoga': 'اليوغا 🧘',
        'gym': 'الصالة الرياضية 💪',
        'boxing': 'الملاكمة 🥊',
        'martial_arts': 'الفنون القتالية 🥋',
      },
    },
    'food': {
      'en': {
        'italian': 'Italian Cuisine 🍝',
        'asian': 'Asian Cuisine 🍜',
        'mexican': 'Mexican Cuisine 🌮',
        'mediterranean': 'Mediterranean 🫒',
        'arabian': 'Arabian Cuisine 🥙',
        'desserts': 'Desserts 🍰',
        'vegetarian': 'Vegetarian 🥗',
        'seafood': 'Seafood 🦐',
        'barbecue': 'Barbecue 🍖',
      },
      'ar': {
        'italian': 'المطبخ الإيطالي 🍝',
        'asian': 'المطبخ الآسيوي 🍜',
        'mexican': 'المطبخ المكسيكي 🌮',
        'mediterranean': 'المطبخ المتوسطي 🫒',
        'arabian': 'المطبخ العربي 🥙',
        'desserts': 'الحلويات 🍰',
        'vegetarian': 'نباتي 🥗',
        'seafood': 'المأكولات البحرية 🦐',
        'barbecue': 'الشواء 🍖',
      },
    },
    'lifestyle': {
      'en': {
        'cooking': 'Cooking 🍳',
        'travel': 'Travel ✈️',
        'reading': 'Reading 📖',
        'gardening': 'Gardening 🌱',
        'meditation': 'Meditation 🧘‍♀️',
        'shopping': 'Shopping 🛍️',
        'volunteering': 'Volunteering 🤝',
        'socializing': 'Socializing 👥',
        'learning': 'Learning 🎓',
        'collecting': 'Collecting 🏺',
      },
      'ar': {
        'cooking': 'الطبخ 🍳',
        'travel': 'السفر ✈️',
        'reading': 'القراءة 📖',
        'gardening': 'البستنة 🌱',
        'meditation': 'التأمل 🧘‍♀️',
        'shopping': 'التسوق 🛍️',
        'volunteering': 'التطوع 🤝',
        'socializing': 'التواصل الاجتماعي 👥',
        'learning': 'التعلم 🎓',
        'collecting': 'جمع التحف 🏺',
      },
    },
  };
  static String getTranslation(String category, String language, String hobby) {
    return translations[category]?[language]?[hobby] ?? hobby;
  }

  // Get translation for a specific hobby in a category
  static String getTranslationAuto(String hobbyKey, String language) {
    final category = findCategoryForHobby(hobbyKey);
    if (category != null) {
      return getTranslation(category, language, hobbyKey);
    }
    return hobbyKey; // Fallback
  }

  static String? findCategoryForHobby(String hobbyKey) {
    for (String category in translations.keys) {
      final categoryHobbies =
          translations[category]?["en"]?.keys.toList() ?? [];
      if (categoryHobbies.contains(hobbyKey)) {
        return category;
      }
    }
    return null; // Not found
  }

  // Get all hobby keys for a specific category
  static List<String> getHobbies(String category) {
    return translations[category]?["en"]?.keys.toList() ?? [];
  }

  // Get all translated hobbies for a category and language
  static List<String> getTranslatedHobbies(String category, String language) {
    return translations[category]?[language]?.values.toList() ?? [];
  }

  // Get all categories
  static List<String> getCategories() {
    return translations.keys.toList();
  }

  // Get hobby key from translated value
  static String getHobbyKey(
    String category,
    String language,
    String translatedHobby,
  ) {
    final categoryMap = translations[category]?[language];
    if (categoryMap != null) {
      for (var entry in categoryMap.entries) {
        if (entry.value == translatedHobby) {
          return entry.key;
        }
      }
    }
    return translatedHobby;
  }

  // Get all hobbies from all categories
  static Map<String, List<String>> getAllHobbiesByCategory(String language) {
    Map<String, List<String>> result = {};
    for (String category in translations.keys) {
      result[category] = getTranslatedHobbies(category, language);
    }
    return result;
  }
}

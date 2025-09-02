import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'wesal_localization_ar.gen.dart';
import 'wesal_localization_en.gen.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of WesalLocalization
/// returned by `WesalLocalization.of(context)`.
///
/// Applications need to include `WesalLocalization.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/wesal_localization.gen.dart';
///
/// return MaterialApp(
///   localizationsDelegates: WesalLocalization.localizationsDelegates,
///   supportedLocales: WesalLocalization.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the WesalLocalization.supportedLocales
/// property.
abstract class WesalLocalization {
  WesalLocalization(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static WesalLocalization of(BuildContext context) {
    return Localizations.of<WesalLocalization>(context, WesalLocalization)!;
  }

  static const LocalizationsDelegate<WesalLocalization> delegate =
      _WesalLocalizationDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @wesal_title.
  ///
  /// In en, this message translates to:
  /// **'Wesal'**
  String get wesal_title;

  /// No description provided for @social_safety_note.
  ///
  /// In en, this message translates to:
  /// **'Your social accounts are safe — we don’t post anything.'**
  String get social_safety_note;

  /// No description provided for @continue_google.
  ///
  /// In en, this message translates to:
  /// **'Continue With Google'**
  String get continue_google;

  /// No description provided for @continue_apple.
  ///
  /// In en, this message translates to:
  /// **'Continue With Apple'**
  String get continue_apple;

  /// No description provided for @signup_agreement.
  ///
  /// In en, this message translates to:
  /// **'By signing up, you agree to our'**
  String get signup_agreement;

  /// No description provided for @terms_of_service.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get terms_of_service;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy.'**
  String get privacy_policy;

  /// No description provided for @and_word.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and_word;

  /// No description provided for @show_less.
  ///
  /// In en, this message translates to:
  /// **'Show less'**
  String get show_less;

  /// No description provided for @show_more.
  ///
  /// In en, this message translates to:
  /// **'Show more'**
  String get show_more;

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get registration;

  /// No description provided for @add_your_images.
  ///
  /// In en, this message translates to:
  /// **'Add your images'**
  String get add_your_images;

  /// No description provided for @skip_for_now.
  ///
  /// In en, this message translates to:
  /// **'Skip for now'**
  String get skip_for_now;

  /// No description provided for @continue_text.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_text;

  /// No description provided for @university_college.
  ///
  /// In en, this message translates to:
  /// **'University/College'**
  String get university_college;

  /// No description provided for @college_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your university/college name'**
  String get college_name;

  /// No description provided for @job_title.
  ///
  /// In en, this message translates to:
  /// **'Job Title'**
  String get job_title;

  /// No description provided for @enter_your_job_title.
  ///
  /// In en, this message translates to:
  /// **'Enter your job title'**
  String get enter_your_job_title;

  /// No description provided for @what_is_your_gender_identity.
  ///
  /// In en, this message translates to:
  /// **'What is your gender identity?'**
  String get what_is_your_gender_identity;

  /// No description provided for @please_tell_us_your_name.
  ///
  /// In en, this message translates to:
  /// **'Please tell us your name?'**
  String get please_tell_us_your_name;

  /// No description provided for @enter_your_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enter_your_name;

  /// No description provided for @what_is_your_date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'What is your date of birth?'**
  String get what_is_your_date_of_birth;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @height.
  ///
  /// In en, this message translates to:
  /// **'Height'**
  String get height;

  /// No description provided for @height_cm.
  ///
  /// In en, this message translates to:
  /// **'Height (cm)'**
  String get height_cm;

  /// No description provided for @cm.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get cm;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @weight_kg.
  ///
  /// In en, this message translates to:
  /// **'Weight (kg)'**
  String get weight_kg;

  /// No description provided for @kg.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get kg;

  /// No description provided for @smoking.
  ///
  /// In en, this message translates to:
  /// **'Smoking'**
  String get smoking;

  /// No description provided for @about_me.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get about_me;

  /// No description provided for @hobbies_and_interests.
  ///
  /// In en, this message translates to:
  /// **'Hobbies and Interests'**
  String get hobbies_and_interests;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// Label for the name input field
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Label for the date of birth picker
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get date_of_birth;

  /// Label for the gender dropdown
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// Submit button text
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// Validation message when no gender is selected
  ///
  /// In en, this message translates to:
  /// **'Please select a gender'**
  String get please_select_gender;

  /// No description provided for @my_photos.
  ///
  /// In en, this message translates to:
  /// **'My Photos'**
  String get my_photos;

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @job.
  ///
  /// In en, this message translates to:
  /// **'Job'**
  String get job;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// Logout button text
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// Delete account button text
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get delete_account;

  /// Profile section title
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// Placeholder text when user has no name
  ///
  /// In en, this message translates to:
  /// **'No Name'**
  String get no_name;

  /// Text to show profile
  ///
  /// In en, this message translates to:
  /// **'Show profile'**
  String get show_profile;

  /// App settings section title
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get app_settings;

  /// Change language setting option
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get change_language;

  /// English language name
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Notifications setting option
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// About section title
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Terms and conditions menu item
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get terms_and_conditions;

  /// No description provided for @no_added_hobbies.
  ///
  /// In en, this message translates to:
  /// **'No added hobbies'**
  String get no_added_hobbies;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @no_users_found.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get no_users_found;

  /// No description provided for @selecte_your_avatar.
  ///
  /// In en, this message translates to:
  /// **'Select your avatar'**
  String get selecte_your_avatar;

  /// No description provided for @smoker.
  ///
  /// In en, this message translates to:
  /// **'Smoker'**
  String get smoker;

  /// No description provided for @non_smoker.
  ///
  /// In en, this message translates to:
  /// **'Non-smoker'**
  String get non_smoker;
}

class _WesalLocalizationDelegate
    extends LocalizationsDelegate<WesalLocalization> {
  const _WesalLocalizationDelegate();

  @override
  Future<WesalLocalization> load(Locale locale) {
    return SynchronousFuture<WesalLocalization>(
      lookupWesalLocalization(locale),
    );
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_WesalLocalizationDelegate old) => false;
}

WesalLocalization lookupWesalLocalization(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return WesalLocalizationAr();
    case 'en':
      return WesalLocalizationEn();
  }

  throw FlutterError(
    'WesalLocalization.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

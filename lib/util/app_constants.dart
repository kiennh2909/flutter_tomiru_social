import 'package:tomiru_social_flutter/features/language/domain/models/language_model.dart';
import 'package:tomiru_social_flutter/util/images.dart';
// import 'package:get/get.dart';

class AppConstants {
  static const String appName = 'Tomiru Social';
  static const double appVersion = 7.5;

  static const String fontFamily = 'Roboto';
  static const bool payInWevView = false;
  static const String baseUrl = 'http://192.168.102.54:8000';

// AUTH
  static const String loginUri = '/ui/v1/auth/login';

  static const String registerUri = '/api/register';
  static const String socialLoginUri = '/api/v1/auth/social-login';
  static const String socialRegisterUri = '/api/v1/auth/social-register';

  static const String tokenUri = '/api/v1/customer/cm-firebase-token';
  static const String verifyTokenUri = '/api/v1/auth/verify-token';
  static const String forgetPasswordUri = '/api/v1/auth/forgot-password';
  static const String resetPasswordUri = '/api/v1/auth/reset-password';

  static const String checkEmailUri = '/api/v1/auth/check-email';
  static const String verifyEmailUri = '/api/v1/auth/verify-email';
  static const String verifyPhoneUri = '/api/v1/auth/verify-phone';

  // USER
  static const String updateProfileUri = '/api/v1/customer/update-profile';
  static const String customerRemoveUri = '/api/v1/customer/remove-account';
  static const String customerInfoUri = '/ui/v1/user/details/2';
  static const String configUri = '/api/v1/config';

// CHAT
  static const String conversationListUri = '/api/v1/customer/message/list';
  static const String searchConversationListUri =
      '/api/v1/customer/message/search-list';
  static const String messageListUri = '/api/v1/customer/message/details';
  static const String sendMessageUri = '/api/v1/customer/message/send';

  static const String subscriptionUri = '/api/v1/newsletter/subscribe';

  static const String notificationUri = '/api/v1/customer/notifications';

  static const String theme = 'theme';
  static const String token = 'multivendor_token';
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';
  static const String cacheCountryCode = 'cache_country_code';
  static const String cacheLanguageCode = 'cache_language_code';
  static const String cartList = 'cart_list';
  static const String userPassword = 'user_password';
  static const String userAddress = 'user_address';
  static const String userNumber = 'user_number';
  static const String userEmail = 'user_email';
  static const String userCountryCode = 'user_country_code';
  static const String notification = 'notification';
  static const String searchHistory = 'search_history';
  static const String intro = 'intro';
  static const String notificationCount = 'notification_count';
  static const String notificationIdList = 'notification_id_list';
  static const String topic = 'all_zone_customer';
  static const String zoneId = 'zoneId';
  static const String localizationKey = 'X-localization';
  static const String latitude = 'latitude';
  static const String longitude = 'longitude';
  static const String earnPoint = 'stackfood_earn_point';
  static const String acceptCookies = '6ammart_accept_cookies';
  static const String cookiesManagement = 'cookies_management';
  static const String dmTipIndex = 'stackfood_dm_tip_index';
  static const String walletAccessToken = '6ammart_wallet_access_token';
  static const String guestId = 'stackfood_guest_id';
  static const String guestNumber = 'stackfood_guest_number';
  static const String dmRegisterSuccess = 'stackfood_dm_registration_success';
  static const String isRestaurantRegister =
      'stackfood_restaurant_registration';

  static List<LanguageModel> languages = [
    LanguageModel(
        imageUrl: Images.vietnam,
        languageName: 'vietnamese',
        countryCode: 'VN',
        languageCode: 'vn'),
    LanguageModel(
        imageUrl: Images.english,
        languageName: 'English',
        countryCode: 'US',
        languageCode: 'en'),
  ];
}
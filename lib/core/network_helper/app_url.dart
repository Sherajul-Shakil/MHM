class AppUrl {
  AppUrl._();

  static const String baseUrl = "http://mhm.mabashihalalfood.com/api/";
  static const String imageUrl = "https://admin.binzoshop.com/upload/logo/";

  //Auth
  static const String registration = "${baseUrl}registration";
  static const String login = "${baseUrl}login";
  static const String resetPassword =
      "${baseUrl}forgot-password/reset-password";
  static const String forgatePassword = "${baseUrl}forgot-password/send-otp";
  static const String varifyOtp = "${baseUrl}forgot-password/verify-otp";

  //Home api
  static const String homeSlider = "${baseUrl}slider/list";
  static const String categoryList = "${baseUrl}category/list";
  static const String categoryWithProduct = "${baseUrl}category-product/list";
  static const String productDetails = "${baseUrl}product/details/";

  //Top Up
  static const String mobileRecharge = "${baseUrl}product/list?category_id=2";
  static const String gameTopup = "${baseUrl}product/list?category_id=1";

  //My Offer
  static const String myOffer = "${baseUrl}account/offer";

  //user
  static const String userDetails = "${baseUrl}account/details";
  static const String updateProfile = "${baseUrl}account/update";
}

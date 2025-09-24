class ApiEndpoints{
  static const String baseUrl = 'http://192.168.4.3:4000/';
  static const String register = 'api/auth/register';
  static const String verifyOTP = 'api/auth/verify-email';
  static const String signIn = 'api/auth/login';
  static const String signInWithGoogle = 'api/auth/google';
  static const String userMe = 'api/auth/me';
  static const String updateMe = 'api/auth/update';
  static const String changePassword = 'api/auth/change-password';
  static const String changeEmailRequest = '/api/auth/request-email-change';
  static const String changeEmail = '/api/auth/change-email';

}
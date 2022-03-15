import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'sign_in': 'Sing In',
          'email': 'EMail',
          'password': 'Password',
          'forgot_password': 'Forgot password?',
          'create_account': 'Create Account'
        },
        'tr_TR': {
          'sign_in': 'Giriş Yap',
          'password': 'Şifre',
          'email': 'EMail',
          'forgot_password': 'Şifrenizi mı unuttunuz?',
          'create_account': 'Hesap Oluştur'
        },
      };
}

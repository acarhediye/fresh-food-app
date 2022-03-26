import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'sign_in': 'Sing In',
          'email': 'EMail',
          'password': 'Password',
          'forgot_password': 'Forgot password?',
          'create_account': 'Create Account',
          'settings': 'Settings',
          'your_account': 'Your Account',
          'your_orders': 'Your Orders',
          'live_chats': 'Live Chat',
          'dark_mode': 'Dark Mode',
          'sign_out': 'Sign Out'
        },
        'tr_TR': {
          'sign_in': 'Giriş Yap',
          'password': 'Şifre',
          'email': 'EMail',
          'forgot_password': 'Şifrenizi mı unuttunuz?',
          'create_account': 'Hesap Oluştur',
          'settings': 'Ayarlar',
          'your_account': 'Hesabınız',
          'your_orders': 'Sepetiniz',
          'live_chats': 'Canlı Mesaj',
          'dark_mode': 'Siyah Tema',
          'sign_out': 'Çıkış Yap'
        },
      };
}

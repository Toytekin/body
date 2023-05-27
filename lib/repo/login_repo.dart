import 'package:firebase_auth/firebase_auth.dart';

import '../model/kayit_model.dart';

class DbUser {
  final FirebaseAuth db = FirebaseAuth.instance;

  Future<bool> saveUser(KayitModel userModel) async {
    db.createUserWithEmailAndPassword(
        email: userModel.mail, password: userModel.sifre);
    return true;
  }

  // Kullanıcı giriş işlemini gerçekleştirme
  Future<UserCredential?> checkUser(String email, String password) async {
    try {
      UserCredential userCredential = await db.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
      // Giriş başarılı olduysa, kullanıcı Credential bilgilerine erişebilirsiniz:
      // userCredential.user.uid, userCredential.user.email vb.
    } catch (e) {
      // Hata durumunda hata mesajını işleyin
      print('Giriş hatası: $e');
      return null;
    }
  }
}

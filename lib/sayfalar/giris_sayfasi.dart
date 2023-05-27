import 'package:fitness_app_okul/model/kayit_model.dart';
import 'package:fitness_app_okul/sabit/mail_textfild.dart';
import 'package:fitness_app_okul/sabit/renkler.dart';
import 'package:fitness_app_okul/sabit/sifre_textfild.dart';
import 'package:fitness_app_okul/sayfalar/kaydolma.dart';
import 'package:fitness_app_okul/sayfalar/secim.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/route_manager.dart';

import '../repo/login_repo.dart';
import 'anasayfa.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({super.key});

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  var mailController = TextEditingController();
  var sifreController = TextEditingController();

  var db = DbUser();

  Row kaydolma() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {
              Get.to(const KaydolmaEkrani());
            },
            child: Text(
              'Kaydol',
              style: TextStyle(color: RenkManeger.genelRenk),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: Get.width / 2,
                width: Get.width / 2,
                child: Lottie.asset('asset/lotti/giris.json')),
            MailTextFild(controller: mailController, label: 'Mail'),
            SifreTextFild(controller: sifreController, label: 'Sifre'),
            kaydolma(),
            const SizedBox(height: 15),
            SizedBox(
                width: Get.width / 2,
                child: ElevatedButton(
                    onPressed: () async {
                      if (mailController.text.isNotEmpty &&
                          sifreController.text.isNotEmpty) {
                        var userKonrolt = KayitModel(
                            mail: mailController.text.toString(),
                            sifre: sifreController.text.toString(),
                            id: '222222');

                        var durum = await db.checkUser(
                            userKonrolt.mail, userKonrolt.sifre);

                        if (durum != null) {
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SecimSayfasi(
                              kayitModel: userKonrolt,
                            ),
                          ));
                        } else {
                          Get.snackbar('Uyarı', 'Geçerli Bİr mail gir',
                              backgroundColor: RenkManeger.genelRenk);
                        }
                      } else {
                        Get.snackbar('Uyarı', 'Lütfen tüm alanları doldur',
                            backgroundColor: RenkManeger.genelRenk);
                      }
                    },
                    child: const Text('Giriş')))
          ],
        ),
      )),
    );
  }
}

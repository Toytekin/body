import 'package:fitness_app_okul/model/kayit_model.dart';
import 'package:fitness_app_okul/repo/login_repo.dart';
import 'package:fitness_app_okul/sabit/renkler.dart';
import 'package:fitness_app_okul/sayfalar/anasayfa.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../sabit/mail_textfild.dart';
import '../sabit/sifre_textfild.dart';

class KaydolmaEkrani extends StatefulWidget {
  const KaydolmaEkrani({super.key});

  @override
  State<KaydolmaEkrani> createState() => _KaydolmaEkraniState();
}

class _KaydolmaEkraniState extends State<KaydolmaEkrani> {
  var mailController = TextEditingController();
  var sifreController = TextEditingController();
  var db = DbUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MailTextFild(controller: mailController, label: 'Mail'),
            SifreTextFild(controller: sifreController, label: 'Sifre'),
            const SizedBox(height: 15),
            SizedBox(
                width: Get.width / 2,
                child: ElevatedButton(
                    onPressed: () async {
                      if (mailController.text.isNotEmpty &&
                          sifreController.text.isNotEmpty) {
                        var userGonder = KayitModel(
                            mail: mailController.text.toString(),
                            sifre: sifreController.text.toString(),
                            id: '00000');

                        var durum = await db.saveUser(userGonder);

                        if (durum == true) {
                          // ignore: use_build_context_synchronously
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AnaSayfa(),
                          ));
                        } else {
                          Get.snackbar('Uyarı', 'Geçerli Bİr mail gir',
                              backgroundColor: RenkManeger.genelRenk);
                        }
                      } else {
                        Get.snackbar('Uyarı',
                            'Tüm alanların dolu olduğuna emin olduktan sonrqa tekrar dene.',
                            backgroundColor: RenkManeger.genelRenk);
                      }
                    },
                    child: const Text('Kaydol')))
          ],
        ),
      ),
    );
  }
}

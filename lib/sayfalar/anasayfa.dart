import 'package:fitness_app_okul/sabit/renkler.dart';
import 'package:fitness_app_okul/sabit/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'detay_liste.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Hareketler',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Bir(),
            Iki(),
          ],
        ),
      ),
    );
  }

  Row Iki() {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: RenkManeger.genelRenk,
            child: ListTile(
                onTap: () {
                  Get.to(DetayListe(geln: 4));
                },
                title:
                    Text('Sırt', style: TextStyle(fontSize: SizeManeger.s20)),
                subtitle: SizedBox(
                    height: 200,
                    width: 100,
                    child: Image.asset('asset/image/sirt.png'))),
          ),
        ),
        Expanded(
          child: Card(
            color: RenkManeger.genelRenk,
            child: ListTile(
                onTap: () {
                  Get.to(DetayListe(geln: 6));
                },
                title:
                    Text('Bacak', style: TextStyle(fontSize: SizeManeger.s20)),
                subtitle: SizedBox(
                    height: 200,
                    width: 100,
                    child: Image.asset('asset/image/bacak.png'))),
          ),
        )
      ],
    );
  }

  Row Bir() {
    return Row(
      children: [
        Expanded(
          child: Card(
            color: RenkManeger.genelRenk,
            child: ListTile(
                onTap: () {
                  Get.to(DetayListe(geln: 0));
                },
                title: Text(
                  'Göğüs',
                  style: TextStyle(fontSize: SizeManeger.s20),
                ),
                subtitle: SizedBox(
                    height: 200,
                    width: 100,
                    child: Image.asset('asset/image/gs.png'))),
          ),
        ),
        Expanded(
          child: Card(
            color: RenkManeger.genelRenk,
            child: ListTile(
                onTap: () {
                  Get.to(DetayListe(geln: 2));
                },
                title: Text(
                  'Kol',
                  style: TextStyle(fontSize: SizeManeger.s20),
                ),
                subtitle: SizedBox(
                    height: 200,
                    width: 100,
                    child: Image.asset('asset/image/kol.png'))),
          ),
        )
      ],
    );
  }
}

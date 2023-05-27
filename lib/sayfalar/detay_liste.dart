import 'package:fitness_app_okul/sabit/renkler.dart';
import 'package:fitness_app_okul/sayfalar/detay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetayListe extends StatefulWidget {
  int geln;

  DetayListe({super.key, required this.geln});

  @override
  State<DetayListe> createState() => _DetayListeState();
}

class _DetayListeState extends State<DetayListe> {
  List liste = [
    'Bench press ',
    'Dips',
    'Arka kol dips',
    'Biceps corl',
    'Lat pul dvn',
    'Pul up',
    'Barbel calf rese',
    'Legs calf rese',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: RenkManeger.genelRenk,
              child: ListTile(
                onTap: () {
                  Get.to(DetaySayfasi(
                    gelen: widget.geln,
                    gelenbaslik: liste[widget.geln],
                  ));
                },
                title: Text(liste[widget.geln]),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              color: RenkManeger.genelRenk,
              child: ListTile(
                onTap: () {
                  Get.to(
                    DetaySayfasi(
                        gelen: widget.geln + 1,
                        gelenbaslik: liste[widget.geln + 1]),
                  );
                },
                title: Text(liste[widget.geln + 1]),
              ),
            )
          ],
        ),
      )),
    );
  }
}

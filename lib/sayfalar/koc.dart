import 'package:fitness_app_okul/sabit/size.dart';
import 'package:fitness_app_okul/sayfalar/koc_detay.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KocSayfasi extends StatefulWidget {
  const KocSayfasi({super.key});

  @override
  State<KocSayfasi> createState() => _KocSayfasiState();
}

class _KocSayfasiState extends State<KocSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("asset/image/koc.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: null /* add child content here */,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 10,
            child: SizedBox(
              height: Get.width / 6,
              width: Get.width / 2,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(const KocDetaySayfasi());
                  },
                  child: Text(
                    'Yardım Al  > > >',
                    style: TextStyle(
                        color: Colors.black, fontSize: SizeManeger.s20),
                  )),
            ),
          ),
          Positioned(
            top: 250,
            left: 10,
            child: SizedBox(
                height: Get.width / 2,
                width: Get.width / 2,
                child: Text(
                  'Seçeceğiniz koçlar araçiliği ile ileri düzey fitnes eğitimi alabilir siniz.',
                  style:
                      TextStyle(color: Colors.white, fontSize: SizeManeger.s26),
                )),
          ),
        ],
      ),
    );
  }
}


//Seçeceğiniz koçlar araçiliği ile ileri düzey fitnes eğitimi ala bilir siniz.
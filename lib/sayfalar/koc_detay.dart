import 'package:fitness_app_okul/sabit/yazilar.dart';
import 'package:flutter/material.dart';

class KocDetaySayfasi extends StatefulWidget {
  const KocDetaySayfasi({super.key});

  @override
  State<KocDetaySayfasi> createState() => _KocDetaySayfasiState();
}

class _KocDetaySayfasiState extends State<KocDetaySayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: SafeArea(
            child: ListView(
          children: [
            Card(
                child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('asset/image/koc1.jpg'),
                  maxRadius: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: const Color.fromARGB(91, 255, 153, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(SbtYazilar.yazi1),
                  ),
                )
              ],
            )),
            Card(
                child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('asset/image/koc2.jpg'),
                  maxRadius: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  color: const Color.fromARGB(91, 255, 153, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(SbtYazilar.yazi2),
                  ),
                )
              ],
            )),
          ],
        )));
  }
}

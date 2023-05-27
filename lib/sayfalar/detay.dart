import 'package:fitness_app_okul/sabit/renkler.dart';
import 'package:fitness_app_okul/sabit/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetaySayfasi extends StatefulWidget {
  int gelen;
  String gelenbaslik;
  DetaySayfasi({super.key, required this.gelen, required this.gelenbaslik});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {
  List imagePath = [
    'asset/image/gs1.png',
    'asset/image/gs2.png',
    'asset/image/kol1.png',
    'asset/image/kol2.png',
    'asset/image/sirt2.png',
    'asset/image/sirtbir.png',
    'asset/image/bacak1.png',
    'asset/image/bacak2.png',
  ];
  List set = ['3x10', '3x10', '4x12', ' 5x10', '4x10', '2x10', '3x12', '4x10'];
  List bilgi = [
    'Bench press kişinin bir ağırlık sehpası üzerinde uzanırken ağırlığı yukarı doğru ittiği bir üst vücut ağırlık antrenmanı egzersizidir. Egzersiz, pektoralis majör, anterior deltoidler ve triceps in yanı sıra diğer dengeleyici kasları da kullanır.',
    'dips, üst vücudun squat hareketidir. mutlaka rutine dahil edilmesi gereken hareketlerden biridir. triceps rutininde dar, göğüs rutininde geniş tutularak amaca uygun bir şekilde kullanılabilir. vücut ağırlığıyla yapılıyor olması başlarda çok hoş iken, güçlendikçe vücut ağırlığınızın size çok az gelmesi de ayrı bir tad, zevk katar bu harekete. vücudunuza bağladığınız ağırlıklarla dips yaparken alacağınız haz ise burada kelimelere dökemeyeceğim türden.. son cümlemde, belki biraz abartmış olabilirim.',
    'Karın kaslarının güçlenmesine yardımcı olarak denge ve koordinasyon yeteneğini destekler. Vücut kas kütlesini artırarak bazal metabolizmayı hızlandırır ve yağ yakımına yardımcı olur',
    'Ön kol kasları için izole bir egzersiz çeşidi olan biceps curl, bu bölgedeki kas gruplarını güçlendirerek kol bölgesinin dolgun bir görünü kazanmasını sağlar. Sporcunun kapasitesine uygun ağırlıktaki dumbbell ler kullanılarak yapılan dumbbell curl hareketi, bir çeşit direnç egzersizidir.',
    'Lat pulldown egzersizi; lat puldown makinesi ile yapılan bir hareket olmakla beraber ağırlığı, yukarıdan aşağı doğru şekilde üst göğüs kısmına çekmek için yapılan kanat ve sırt egzersizidir.',
    'pull up barı, paralel bar ve halka olduğu sürece her yerde yapışabilen antreman tipi. vücut ağırlığı hafif gelmeye başladığında çoğu harekete ağırlık ekleyerek yapabilirsiniz. slim fit kalmak veya büyümek sizin elinizde olmasına rağmen kasları uzattığınız için şişik değil hep fit duracak.',
    'Standing calf raise hareketi, baldır kaslarını geliştirmek için yapılan bir harekettir. Calf hareketi; vücut ağırlığını kullanarak ya da ağırlık ile, tek ya da çift ayak ucuyla vücudu yükselterek kalf kaslarını geliştirmeye yarayan bir egzersizdir.',
    'Standing calf raise hareketi, baldır kaslarını geliştirmek için yapılan bir harekettir. Calf hareketi; vücut ağırlığını kullanarak ya da ağırlık ile, tek ya da çift ayak ucuyla vücudu yükselterek kalf kaslarını geliştirmeye yarayan bir egzersizdir.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.gelenbaslik),
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              height: Get.width / 2,
              width: Get.width / 2,
              child: Image.asset(imagePath[widget.gelen]),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                set[widget.gelen],
                style: TextStyle(
                  fontSize: SizeManeger.s20,
                  color: RenkManeger.genelRenk,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: RenkManeger.genelRenk,
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      bilgi[widget.gelen],
                      style: TextStyle(fontSize: SizeManeger.s24),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

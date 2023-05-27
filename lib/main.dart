import 'package:firebase_core/firebase_core.dart';
import 'package:fitness_app_okul/model/kayit_model.dart';
import 'package:fitness_app_okul/sabit/renkler.dart';
import 'package:fitness_app_okul/sayfalar/giris_sayfasi.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(KayitModelAdapter());
  await Hive.openBox<KayitModel>('kaydolmaDB');

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: RenkManeger.genelRenk,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style:
              ElevatedButton.styleFrom(backgroundColor: RenkManeger.genelRenk),
        ),
      ),
      title: 'Material App',
      home: const GirisSayfasi(),
    );
  }
}


// Platform  Firebase App Id
// android   1:261623034703:android:1105accdc2df4d2618cb3a
// ios       1:261623034703:ios:3e81fee9dce0e1e118cb3a
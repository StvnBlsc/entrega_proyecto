import 'package:flutter/material.dart';

//Pages
import 'package:goodcoffee/pages/add_name_page.dart';
import 'package:goodcoffee/pages/edit_name_page.dart';
import 'package:goodcoffee/pages/home_page.dart';

//Importaciones de firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (contex) => const Home(),
        '/add': (context) => const AddNamePage(),
        '/edit': (context) => const EditNamePage(),
      },
    );
  }
}

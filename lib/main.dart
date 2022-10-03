import 'package:flutter/material.dart';
import 'package:flutter_isar_db/main_page.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'collecdtions/category.dart';
import 'collecdtions/routine.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationSupportDirectory();
  final isar = await Isar.open(
      schemas: [RoutineSchema, CategorySchema], directory: dir.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}


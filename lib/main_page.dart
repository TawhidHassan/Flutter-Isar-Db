import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

import 'Screen/create_routine.dart';

class MainPage extends StatefulWidget {
  final Isar isar;
  const MainPage({Key? key, required this.isar}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Routine"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateRoutine(isar: widget.isar,)));
              },
              icon: const Icon(Icons.add))
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Letter extends StatelessWidget {
  const Letter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お便り'),
      ),
      body: Consumer(
        builder: (BuildContext context, WidgetRef ref, _) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {},
          );
        },
      ),
    );
  }
}

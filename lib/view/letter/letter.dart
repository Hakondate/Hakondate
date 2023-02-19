import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hakondate/constant/size.dart';
import 'package:hakondate/model/letter/letter_metadata_model.dart';
import 'package:hakondate/view_model/single_page/letter_view_model.dart';

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
            itemCount: ref.watch(letterProvider).letters.length,
            itemBuilder: (BuildContext context, int index) {
              final LetterMetadataModel letter = ref.watch(letterProvider).letters[index];
              return Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 100,
                        color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 8.0,
                        ),
                        child: Text(
                          letter.title,
                          style: const TextStyle(
                            fontSize: FontSize.body,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hakondate/constant/size.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('認証'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          vertical: MarginSize.normalVertical,
          horizontal: MarginSize.normalHorizontal,
        ),
        child: Column(
          children: <Widget>[
            const Text(
              '　選択された学校の献立を見るには認証コードが必要です',
              style: TextStyle(fontSize: FontSize.body),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class License extends StatelessWidget {
  const License({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ライセンス'),
      ),
      body: FutureBuilder(
        future: LicenseRegistry.licenses.toList(),
        builder: (BuildContext context, AsyncSnapshot<List<LicenseEntry>> snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const SizedBox.shrink();
          }

          final List<LicenseEntry>? licenses = snapshot.data;
          if (licenses != null) {
            return ListView.builder(
              itemCount: licenses.length,
              itemBuilder: (BuildContext context, int index) {
                final LicenseEntry license = licenses[index];

                return ListTile(
                  title: Text(license.packages.toString()),
                );
              },
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}

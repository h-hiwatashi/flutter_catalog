import 'package:flutter/material.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog View'),
      ),
      body: Center(
        child: Text('This is the catalog view'),
      ),
    );
  }
}

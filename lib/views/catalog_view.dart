import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog View'),
      ),
      body: Column(
        children: [
          FilledButton(
            onPressed: () {
              context.push('/video_player');
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text('video_player'),
          ),
        ],
      ),
    );
  }
}

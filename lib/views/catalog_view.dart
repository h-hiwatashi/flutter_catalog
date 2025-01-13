import 'package:flutter/material.dart';
import 'package:flutter_catalog/infra/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/video_player.dart';

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
              goRouter.go('/video_player');
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

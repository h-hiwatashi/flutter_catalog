import 'package:flutter/material.dart';
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
      body: VideoPlayerWidget(),
      // body: Center(
      //   child: Text('This is the catalog view'),
      // ),
    );
  }
}

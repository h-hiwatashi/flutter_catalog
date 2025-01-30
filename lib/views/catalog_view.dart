import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CatalogView extends StatelessWidget {
  const CatalogView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Catalog View'),
        ),
        floatingActionButton: FloatingActionButton(
          heroTag: '1',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('ボタンが押されました！'),
              ),
            );
          },
          hoverColor: Colors.pink,
          child: const Icon(Icons.add),
        ),
        body: ListView(
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
            FilledButton(
              onPressed: () {
                context.push('/button_widgets');
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text('button_widgets'),
            ),
          ],
        ),
      ),
    );
  }
}

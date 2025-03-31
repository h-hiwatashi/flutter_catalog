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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
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
              FilledButton(
                onPressed: () {
                  context.push('/animation_and_motion_example');
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('animation_and_motion_example'),
              ),
              FilledButton(
                onPressed: () {
                  context.push('/input_widgets');
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('input_widgets'),
              ),
              FilledButton(
                onPressed: () {
                  context.push('/carousel_slider');
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('carousel_slider'),
              ),
              FilledButton(
                onPressed: () {
                  context.push('/debug_widgets');
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text('debug_widgets'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

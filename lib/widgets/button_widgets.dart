import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ButtonWidgetsView extends ConsumerWidget {
  const ButtonWidgetsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Widgets'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(height: 10),
                    FloatingActionButton.small(
                      heroTag: null,
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: const Icon(Icons.add),
                    ),
                    SizedBox(height: 10),
                    FloatingActionButton(
                      heroTag: null,
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: const Icon(Icons.add),
                    ),
                    SizedBox(height: 10),
                    FloatingActionButton.large(
                      heroTag: null,
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      child: const Icon(Icons.add),
                    ),
                    SizedBox(height: 10),
                    FloatingActionButton.extended(
                      heroTag: null,
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      label: const Text('Add'),
                      icon: const Icon(Icons.add),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {},
                      child: const Text('TextButton1 Sample'),
                    ),
                    SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text('OutlinedButton1 Sample'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('ElevatedButton1 Sample'),
                    ),
                    SizedBox(height: 10),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
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
        tooltip: 'FloatingActionButton',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Container(height: 50.0),
      ),
    );
  }
}

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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
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
                      IconButton(
                        icon: const Icon(Icons.volume_up),
                        padding: EdgeInsets.all(10),
                        onPressed: () {
                          const SnackBar(
                            content: Text('ボタンが押されました！'),
                          );
                        },
                      ),
                      SizedBox(height: 10),
                      Text('Text!!!'),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: [
                            TextSpan(
                              text: 'RichText',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' is'),
                            TextSpan(
                              text: ' Nice!',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      const Image(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          const Icon(Icons.search,
                              size: 30, color: Colors.green),
                          const Icon(Icons.favorite,
                              size: 30, color: Colors.red),
                          const Icon(Icons.settings,
                              size: 30, color: Colors.grey),
                          IconButton(
                            onPressed: () {
                              print('tap');
                            },
                            icon: Icon(
                              Icons.home,
                              size: 30,
                              color: Colors.blue,
                            ),
                          )
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 50),
                    ],
                  ),
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

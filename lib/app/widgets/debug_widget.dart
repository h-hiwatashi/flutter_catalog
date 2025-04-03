import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

/// 動作確認用
class DebugWidgetsView extends StatelessWidget {
  const DebugWidgetsView({super.key});

  static const Duration duration = Duration(seconds: 1);
  static const Curve curve = Curves.fastOutSlowIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Debug Widgets View'),
      ),
      backgroundColor: Colors.blueGrey,
      body: LayoutBuilder(
        builder: (context, constraints) {
          // 親の幅を取得
          final parentWidgetWidth = constraints.maxWidth;
          final isNarrow = parentWidgetWidth < 180;

          return Flex(
              direction: isNarrow ? Axis.vertical : Axis.horizontal,
              children: [
                Container(
                  width: 200,
                  height: 120,
                  color: Colors.blue,
                  child: const Center(child: Text('Container')),
                ),
                const Gap(20),
                Container(
                  width: 200,
                  height: 120,
                  color: Colors.red,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Center(child: Text('Container')),
                ),
              ]);
        },
      ),
    );
  }
}

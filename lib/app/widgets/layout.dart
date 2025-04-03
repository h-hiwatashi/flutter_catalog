import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utl/export.dart';

/// 動作確認用
class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  static const Duration duration = Duration(seconds: 1);
  static const Curve curve = Curves.fastOutSlowIn;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        title: Text('Debug Widgets View'),
      ),
      body: Row(
        children: [
          ColoredBox(
            color: Colors.green,
            child: Text('Text Widget'),
          ),
          Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // 親の幅を取得
                final parentWidgetWidth = constraints.maxWidth;
                final isNarrow = parentWidgetWidth < 180;

                return Flex(
                    direction: isNarrow ? Axis.vertical : Axis.horizontal,
                    children: [
                      const Gap(20),
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.blue,
                        child: const Center(child: Text('Container')),
                      ),
                      const Gap(20),
                      Container(
                        width: 100,
                        height: 120,
                        color: Colors.red,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: const Center(child: Text('Container')),
                      ),
                    ]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

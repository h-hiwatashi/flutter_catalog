import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utl/custom_scaffold.dart';

/// ユーザーに情報を表示するためのウィジェット。
class InformationWidgets extends StatelessWidget {
  InformationWidgets({super.key});

  final GlobalKey<TooltipState> toolTipKey = GlobalKey<TooltipState>();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(
          title: Text('Information Widgets Viw'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(50),
                Tooltip(
                  message: 'I am a Tooltip',
                  child: Container(
                    color: Colors.blue,
                    child: TextButton(
                        onPressed: () {},
                        onHover: (value) {
                          debugPrint('Hover!');
                        },
                        child: Text('Hover over the text to show a tooltip.')),
                  ),
                ),
                Gap(200),
                Tooltip(
                  message: 'I am a Tooltip',
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                        colors: <Color>[Colors.amber, Colors.red]),
                  ),
                  height: 50,
                  padding: const EdgeInsets.all(8.0),
                  preferBelow: true,
                  textStyle: const TextStyle(fontSize: 24),
                  showDuration: const Duration(seconds: 2),
                  waitDuration: const Duration(seconds: 1),
                  child: Container(
                    color: Colors.blue,
                    child: const Text(
                        'Tap this text and hold down to show a tooltip.'),
                  ),
                ),
                Gap(200),
                Tooltip(
                  richMessage: TextSpan(
                    text: 'I am a rich tooltip. ',
                    style: TextStyle(color: Colors.red),
                    children: <InlineSpan>[
                      TextSpan(
                        text: 'I am another span of this rich tooltip',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  child: Container(
                      color: Colors.blue,
                      child: Text(
                          'Tap this text and hold down to show a tooltip.')),
                ),
                Gap(200),
                Tooltip(
                  // Provide a global key with the "TooltipState" type to show
                  // the tooltip manually when trigger mode is set to manual.
                  key: toolTipKey,
                  triggerMode: TooltipTriggerMode.manual,
                  showDuration: const Duration(seconds: 1),
                  message: 'I am a Tooltip',
                  child: Container(
                    color: Colors.blue,
                    child: const Text('Tap on the FAB'),
                  ),
                ),
                Gap(200),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            // Show Tooltip programmatically on button tap.
            toolTipKey.currentState?.ensureTooltipVisible();
          },
          label: const Text('Show Tooltip'),
        ));
  }
}

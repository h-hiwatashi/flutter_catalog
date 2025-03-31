import 'package:carousel_slider/carousel_slider.dart';
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
      body: SizedBox(),
    );
  }
}

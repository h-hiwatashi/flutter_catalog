import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

/// Carousel Slider のサンプル
///
/// https://pub.dev/packages/carousel_slider
class CarouselSliderView extends StatelessWidget {
  const CarouselSliderView({super.key});

  static const Duration duration = Duration(seconds: 1);
  static const Curve curve = Curves.fastOutSlowIn;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel Slider View'),
      ),
      body: Column(
        children: [
          CarouselSlider(
            items: [
              for (final item in [1, 2, 3, 4, 5])
                Container(
                  width: 256,
                  color: Colors.blue,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(item.toString()),
                )
            ],
            options: CarouselOptions(
              height: 120,
              viewportFraction: ((246 + 20) / MediaQuery.sizeOf(context).width),
              aspectRatio: 256 / 120,
            ),
          )
        ],
      ),
    );
  }
}

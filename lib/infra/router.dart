import 'package:flutter/material.dart';
import 'package:flutter_catalog/app/widgets/carousel_slider.dart';
import 'package:go_router/go_router.dart';

import '../app/views/catalog_view.dart';
import '../app/widgets/animation.dart';
import '../app/widgets/input_widgets.dart';
import '../app/widgets/video_player.dart';
import '../app/widgets/button_widgets.dart';

final goRouter = GoRouter(
  // アプリが起動した時
  initialLocation: '/',
  // パスと画面の組み合わせ
  routes: [
    GoRoute(
      path: '/',
      name: 'initial',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const CatalogView(),
        );
      },
    ),
    GoRoute(
      path: '/video_player',
      name: 'video_player',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const VideoPlayerView(),
        );
      },
    ),
    GoRoute(
      path: '/button_widgets',
      name: 'button_widgets',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ButtonWidgetsView(),
      ),
    ),
    GoRoute(
      path: '/animation_and_motion_example',
      name: 'animation_and_motion_example',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: const AnimationAndMotionExampleView(),
      ),
    ),
    GoRoute(
      path: '/input_widgets',
      name: 'input_widgets',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: InputWidgetsView(),
      ),
    ),
    GoRoute(
      path: '/carousel_slider',
      name: 'carousel_slider',
      pageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: CarouselSliderView(),
      ),
    )
  ],
  // 遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);

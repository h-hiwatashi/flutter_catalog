import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/catalog_view.dart';
import '../widgets/video_player.dart';

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

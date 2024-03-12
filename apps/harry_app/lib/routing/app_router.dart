import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../ui/hp_detail_app.dart';
import '../ui/hp_home_app.dart';

class AppRouter {
  final goRouter = GoRouter(
    // アプリが起動した際の初期画面
    initialLocation: '/',
    // パスと画面の関連付け
    routes: [
      // ホーム画面
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) {
          return const HpHomeApp("ハリーポッター登場人物一覧");
        },
      ),
      // 詳細画面
      GoRoute(
        path: '/hp_detail_app',
        builder: (context, state) {
          final item = state.extra as Map<String, String>?;
          if (item == null) {
            // extraがnullの場合の処理、適切なエラーハンドリングを行う
            return Scaffold(
              appBar: AppBar(title: const Text("Error")),
              body: const Center(child: Text("Character data not found.")),
            );
          }
          return HpDetailApp(characterName: item['name']!, characterData: item);
        },
      ),
    ],
  );
}
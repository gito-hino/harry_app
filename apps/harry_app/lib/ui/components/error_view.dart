import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/hogwarts_family_provider.dart';

// エラー表示用のウィジェット
class ErrorView extends ConsumerWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("データの取得に失敗しました"),
          ElevatedButton(
            onPressed: () {
              // プロバイダーを再読み込みしてデータ取得をリトライ
              ref.refresh(hogwartsFamilyProvider);
            },
            child: const Text("リトライ"),
          ),
        ],
      ),
    );
  }
}
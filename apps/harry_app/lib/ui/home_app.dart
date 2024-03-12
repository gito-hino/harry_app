import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/hogwarts_family_provider.dart';
import 'components/custom_appbar_view.dart';
import 'components/error_view.dart';
import 'components/harrypotter_list_view.dart';

// ホーム画面のウィジェット
class HomeApp extends ConsumerWidget {
  const HomeApp(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // hogwartsFamilyProviderから非同期にデータを取得し、
    // AsyncValueオブジェクトとしてhogwartsFamilyに格納
    final AsyncValue<List<Map<String, String>>> hogwartsFamily
    = ref.watch(hogwartsFamilyProvider);
    return Scaffold(
      appBar: CustomAppBar(title: title),
      // AsyncValueを使用して、データ取得の状態に応じた異なるUIを表示
      body: hogwartsFamily.when(
        // データが取得できた場合
        data: (list) => HarryPotterListView(listData: list),
        // データが取得できるまでローディング画面を表示
        loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        // データが取得できなかった場合
        error: (error, stackTrace) => const ErrorView(),
      ),
    );
  }
}

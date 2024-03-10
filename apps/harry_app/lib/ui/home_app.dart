// ホーム画面
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../providers/hogwarts_family_provider.dart';

class HomeApp extends ConsumerWidget {
  const HomeApp(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // hogwartsFamilyProviderから非同期にデータを取得し、
    // AsyncValueオブジェクトとしてhogwartsFamilyに格納（）
    final AsyncValue<List<Map<String, String>>> hogwartsFamily
    = ref.watch(hogwartsFamilyProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent[700],
        title: Text(title),
      ),
      // AsyncValueを使用して、データ取得の状態に応じた異なるUIを表示
      body: hogwartsFamily.when(
        // データが取得できた場合
        data: (list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 106,
              color: Colors.white,
              child: Row(
                children: [
                  // アイコン画像
                  Container(
                    width: 80,
                    height: 80,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: Colors.grey[500],
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: AspectRatio(
                          // 正方形の比率を設定
                          aspectRatio: 1.0,
                          child: SvgPicture.asset(
                              'assets/images/harry_potter_icon.svg',
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // 名前
                        list[index]["name"]!,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        // 年齢
                        "年齢: ${list[index]["age"]!}歳",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        // 所属寮
                        "所属: ${list[index]["house"]!}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        // データが取得できるまでローディング画面を表示
        loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        // データが取得できなかった場合
        error: (error, stack) {
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
        },
      ),
    );
  }
}

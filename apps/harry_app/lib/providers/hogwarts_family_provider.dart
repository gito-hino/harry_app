import 'package:flutter_riverpod/flutter_riverpod.dart';

final hogwartsFamilyProvider = Provider<List<Map<String, String>>>((ref) {
  return [
    {"name": "ハリー・ポッター", "age": "11", "house": "グリフィンドール"},
    {"name": "ハーマイオニー・グレンジャー", "age": "11", "house": "グリフィンドール"},
    {"name": "ロン・ウィーズリー", "age": "11", "house": "グリフィンドール"},
    {"name": "ドラコ・マルフォイ", "age": "11", "house": "スリザリン"},
    {"name": "ルーナ・ラブグッド", "age": "11", "house": "レイブンクロー"},
    {"name": "セドリック・ディゴリー", "age": "14", "house": "ハッフルパフ"},
  ];
});

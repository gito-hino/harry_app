// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ui/home_app.dart';

void main() {
  runApp(
    // Riverpodを使うためにProviderScopeでラップ
    const ProviderScope(
      child: MaterialApp(
        home: HomeApp("ハリーポッター登場人物一覧"),
      ),
    )
  );
}
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ui/home_app.dart';

void main() {
  runApp(
    // Riverpodを使うためにProviderScopeでラップ
    const ProviderScope(
      child: MaterialApp(
        //デフォルトのホーム画面をHomeAppに設定
        home: HomeApp(""),
      ),
    )
  );
}
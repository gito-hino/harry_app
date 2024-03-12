import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// 詳細画面のウィジェット
class HpDetailApp extends StatelessWidget {
  final String characterName;
  // タップされた登場人物のデータを受け取る
  final Map<String, String> characterData;

  const HpDetailApp(
      {super.key, required this.characterName, required this.characterData}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('詳細画面'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 画像を表示
            SvgPicture.asset(
              'assets/images/harry_potter_icon.svg', // 仮のパス
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20),
            // 名前を表示
            Text('名前: ${characterData['name']}', style: TextStyle(fontSize: 20)),
            // 年齢を表示
            Text('年齢: ${characterData['age']}歳', style: TextStyle(fontSize: 18)),
            // 所属を表示
            Text('所属: ${characterData['house']}', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }

}
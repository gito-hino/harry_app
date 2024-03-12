import 'package:flutter/material.dart';

// アップバーのカスタムウィジェット
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amberAccent[700],
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

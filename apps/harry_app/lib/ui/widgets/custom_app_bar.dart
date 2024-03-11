
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.amberAccent[700],
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44);
}
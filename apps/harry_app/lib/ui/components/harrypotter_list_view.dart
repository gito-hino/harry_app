import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ハリーポッターリストのウィジェット
class HarryPotterListView extends StatelessWidget {
  final List<Map<String, String>> listData;

  const HarryPotterListView({super.key, required this.listData});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: (context, index) {
        final item = listData[index];
        return Container(
          width: double.infinity,
          height: 106,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.grey[500],
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 1.0,
                    child: SvgPicture.asset(
                      'assets/images/harry_potter_icon.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item["name"]!,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "年齢: ${item["age"]!}歳",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "所属: ${item["house"]!}",
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
    );
  }
}

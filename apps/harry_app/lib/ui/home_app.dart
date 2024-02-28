// ホーム画面
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Harry App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Harry App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> hogwartsFamily = [
    {"name": "Harry Potter", "age": "11", "house": "Gryffindor"},
    {"name": "Hermione Granger", "age": "11", "house": "Gryffindor"},
    {"name": "Ron Weasley", "age": "11", "house": "Gryffindor"},
    {"name": "Draco Malfoy", "age": "11", "house": "Slytherin"},
    {"name": "Luna Lovegood", "age": "11", "house": "Ravenclaw"},
    {"name": "Cedric Diggory", "age": "11", "house": "Hufflepuff"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: hogwartsFamily.length,
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
                      hogwartsFamily[index]["name"]!,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Age: ${hogwartsFamily[index]["age"]!}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "House: ${hogwartsFamily[index]["house"]!}",
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
    );
  }
}
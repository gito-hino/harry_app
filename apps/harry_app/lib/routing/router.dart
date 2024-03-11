//
//
//
// import 'package:go_router/go_router.dart';
//
// import '../ui/home_app.dart';
//
// class AppRouter {
//   final goRouter = GoRouter(
//     // アプリが起動した際の初期画面
//     initialLocation: '/',
//     // パスと画面の関連付け
//     routes: [
//       GoRoute(
//         path: '/',
//         name: 'home',
//         builder: (context, state) {
//           return const HomeApp("ハリーポッター登場人物一覧");
//         },
//       ),
//       // HogwartsFamilyApp画面
//       GoRoute(
//         path: '/hogwarts_family',
//         builder: (context, state) {
//           return const HogwartsFamilyApp();
//         },
//       ),
//     ],
//   )
// }
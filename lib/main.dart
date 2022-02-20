import 'package:flutter/material.dart';
import 'view/base_screen.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const BaseScreen(),
    theme: ThemeData(primarySwatch: Colors.green)));

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Git Search App',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       // home: const BaseScreen(),
//       home : ChangeNotifierProvider<Counter>(
//         create: (_) => Counter(),
//         child: const Example(),
//       ),
//     );
//   }
// }

// class AppMain extends StatelessWidget {
//   const AppMain({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Provider Example1',
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Provider Example'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: Text(
//               '현재 숫자: ${context.watch<Counter>().count}', // watch 사용.
//             ),
//             onPressed: () {
//               context.read<Counter>().increment(); // read 사용.
//               log("data1 :: ${context.read<Counter>().count}");
//               log("data2 :: ${context.read<Counter>()._count}");
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Counter extends ChangeNotifier {
//   int _count = 0;

//   int get count => _count;

//   void increment() {
//     _count++;
//     notifyListeners();
//   }
// }

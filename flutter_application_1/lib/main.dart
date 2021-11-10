import 'package:flutter/widgets.dart';
import 'dart:math';

main() => runApp(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color =
      Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(
          () {
            color = Color((Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
          },
        );
      },
      child: Container(color: color, child: const Center(child: Text('Hey there'),
    )));
  }
}

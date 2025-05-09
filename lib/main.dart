import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundColor = Colors.blue;
  String colorName = 'blue';

  final Map<Color, String> colorMap = {
    Colors.red: 'red',
    Colors.green: 'green',
    Colors.blue: 'blue',
    Colors.orange: 'orange',
    Colors.purple: 'purple',
    Colors.teal: 'teal',
    Colors.amber: 'amber',
  };

  late List<Color> colorList;

  @override
  void initState() {
    super.initState();
    colorList = colorMap.keys.toList();
  }

  void changeColor() {
    final selectedColor =
    colorList[DateTime.now().second % colorList.length];

    setState(() {
      backgroundColor = selectedColor;
      colorName = colorMap[selectedColor] ?? 'unknown';
    });
  }

  @override
  Widget build(BuildContext context) {
    final textColor = backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Text('Colorful Screen'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current background color: $colorName',
                style: TextStyle(fontSize: 20, color: textColor),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: changeColor,
                child: const Text('Change Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

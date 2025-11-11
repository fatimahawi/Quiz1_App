import 'package:flutter/material.dart';
import 'dart:math';

class QuotePage extends StatefulWidget {
  const QuotePage({super.key});

  @override
  State<QuotePage> createState() => _QuotePageState();
}

class _QuotePageState extends State<QuotePage> {
  String message = "Tap 'New Quote' to get motivated! ✨";
  Color backgroundColor = Colors.grey.shade300;
  String emoji = "❓";

  final List<Map<String, dynamic>> quotes = [
    {
      'text': 'You can do it!',
      'color': Colors.green.shade200,
      'emoji': '🚀',
    },
    {
      'text': 'Keep going!',
      'color': Colors.blue.shade200,
      'emoji': '💪',
    },
    {
      'text': 'Believe in yourself!',
      'color': Colors.orange.shade200,
      'emoji': '🌟',
    },
  ];

  void newQuote() {
    final random = Random();
    int randomIndex = random.nextInt(quotes.length);
    setState(() {
      message = quotes[randomIndex]['text'];
      backgroundColor = quotes[randomIndex]['color'];
      emoji = quotes[randomIndex]['emoji'];
    });
  }

  void resetQuote() {
    setState(() {
      message = "Tap 'New Quote' to get motivated! ✨";
      backgroundColor = Colors.grey.shade300;
      emoji = "❓";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              emoji,
              style: const TextStyle(fontSize: 45),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: newQuote,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              ),
              child: const Text("New Quote"),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: resetQuote,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
              ),
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}

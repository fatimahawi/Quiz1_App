import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
           child: Text("Tap New Quote to get motivated✨",
           style:ButtonStyle()
           ),
           
      
        ), 
        
      ), 
      
    );
  }
}

import 'package:flutter/material.dart';

class WidgetsPart1Page extends StatelessWidget {
  const WidgetsPart1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 173, 208, 236),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Widgets Part 1',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 226, 228, 235),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 6,
                offset: const Offset(2, 3),
              ),
            ],
          ),
          child: const ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            title: Text(
              'Container',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Basic widget that allows you to create a box with a specified size, color, and border radius.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}

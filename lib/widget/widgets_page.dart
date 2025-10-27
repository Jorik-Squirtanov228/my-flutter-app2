import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widgets_part1_page.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 173, 208, 236),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Flutter Widgets',
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
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 247, 247, 247),
                Color.fromARGB(255, 168, 210, 241)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: const Offset(2, 4),
              ),
            ],
          ),
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            title: const Text(
              'Widgets Part 1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              'Container, SizedBox, Padding, Align, Center, Text, Row, Column, Expanded, Buttons, Scroll',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(top: 50), // ← двигает стрелку вниз
              child: Icon(
                Icons.arrow_right_alt,
                color: Color.fromARGB(255, 41, 119, 236),
                size: 32,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WidgetsPart1Page(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

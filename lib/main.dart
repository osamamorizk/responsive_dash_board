import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const ResponsiveAppExample());
}

class ResponsiveAppExample extends StatelessWidget {
  const ResponsiveAppExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

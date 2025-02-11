import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/widgets/adaptive_layout.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/desktop_layout.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/mobile_layout.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => MobileLayout(),
      tabletLayout: (context) => TabletLayout(),
      desktopLayout: (context) => DesktopLayout(),
    );
  }
}

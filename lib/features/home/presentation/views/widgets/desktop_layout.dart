import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_drawer1.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/desktop_custom_item.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer1()),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TabletLayout(),
            )),
        Expanded(child: DesktopCustomItem()),
      ],
    );
  }
}

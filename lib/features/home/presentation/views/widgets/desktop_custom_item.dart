import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_item.dart';

class DesktopCustomItem extends StatelessWidget {
  const DesktopCustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Expanded(flex: 2, child: CustomItem()),
          SizedBox(height: 16),
          Expanded(
            child: CustomItem(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

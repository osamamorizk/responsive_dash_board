import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 16, crossAxisSpacing: 16),
      itemBuilder: (context, index) {
        return CustomItem();
      },
    );
  }
}

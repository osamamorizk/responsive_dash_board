import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_item.dart';

class CustomHorizontalListView extends StatelessWidget {
  const CustomHorizontalListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 16),
              child: AspectRatio(aspectRatio: 1, child: CustomItem()),
            );
          },
        ),
      ),
    );
  }
}

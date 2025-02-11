import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_grid_view.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomGridView(),
        CustomSliverList()
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:responsive_ui_app/features/home/presentation/views/widgets/custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
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
        CustomHorizontalListView(),
        CustomSliverList()
      ],
    );
  }
}

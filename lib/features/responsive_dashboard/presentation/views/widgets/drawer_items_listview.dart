import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_assets.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/data/models/drawer_item_model.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_drawer_item.dart';

class CustomDraweItemsListView extends StatefulWidget {
  const CustomDraweItemsListView({
    super.key,
  });

  @override
  State<CustomDraweItemsListView> createState() =>
      _CustomDraweItemsListViewState();
}

class _CustomDraweItemsListViewState extends State<CustomDraweItemsListView> {
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              if (index != selectedIndex) {
                setState(() {
                  selectedIndex = index;
                });
              }
            },
            child: CustomDrawerItem(
              drawerItemModel: items[index],
              isActive: index == selectedIndex,
            ));
      },
    );
  }
}

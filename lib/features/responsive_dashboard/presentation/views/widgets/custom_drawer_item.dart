import 'package:flutter/material.dart';

import 'package:responsive_ui_app/features/responsive_dashboard/data/models/drawer_item_model.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/active_and_inactive_drawer_item.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItemModel: drawerItemModel)
        : InactiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}

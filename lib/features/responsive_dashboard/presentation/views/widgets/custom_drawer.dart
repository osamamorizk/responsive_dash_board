import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_assets.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/data/models/drawer_item_model.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/active_and_inactive_drawer_item.dart';

import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/drawer_items_listview.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
        ),
        CustomDraweItemsListView(),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              InactiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Setting system', image: Assets.imagesSettings),
              ),
              InactiveDrawerItem(
                drawerItemModel: DrawerItemModel(
                    title: 'Logout account', image: Assets.imagesLogout),
              ),
              SizedBox(
                height: 48,
              )
            ],
          ),
        )
      ],
    );
  }
}

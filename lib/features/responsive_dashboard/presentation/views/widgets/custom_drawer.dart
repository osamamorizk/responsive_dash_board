import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_assets.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/user_info_listtile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInfoListTile(
          image: Assets.imagesAvatar3,
          title: 'Lekan Okeowo',
          subtitle: 'demo@gmail.com',
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_assets.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/data/models/user_info_model.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/user_info_listtile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    //if items number is small use column
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
    // if items number is large use list view as it's lazy builder.
    // return SizedBox(
    //   height: 75,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(userInfoModel: items[index]),
    //       );
    //     },
    //   ),
    // );
  }
}

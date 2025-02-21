import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui_app/core/helpers/app_text_styles.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/data/models/expensess_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensessItemModel, required this.isSelected});
  final ExpensessItemModel expensessItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff4EB7F2) : null,
        border: Border.all(
            width: .3,
            color: isSelected ? Colors.transparent : Colors.grey.shade400),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      isSelected ? Color(0xff5FBEF3) : Color(0xffFAFAFA),
                  child: Center(
                      child: SvgPicture.asset(
                    expensessItemModel.icon,
                    colorFilter: ColorFilter.mode(
                        isSelected ? Colors.white : Color(0xff4eb7f2),
                        BlendMode.srcIn),
                  )),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ],
          ),
          SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensessItemModel.title,
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: isSelected ? Colors.white : null),
            ),
          ),
          SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'April 2022',
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: isSelected ? Colors.white : null),
            ),
          ),
          SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              expensessItemModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: isSelected ? Colors.white : null),
            ),
          ),
        ],
      ),
    );
  }
}

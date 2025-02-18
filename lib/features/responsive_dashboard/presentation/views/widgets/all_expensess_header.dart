import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_text_styles.dart';

class AllExpensessHedear extends StatelessWidget {
  const AllExpensessHedear({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: .4, color: Colors.grey),
          ),
          child: Row(
            children: [
              Text('Monthly'),
              SizedBox(
                width: 18,
              ),
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
        )
      ],
    );
  }
} 

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_text_styles.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/latest_transaction_list_view.dart';

class QuikInvoice extends StatelessWidget {
  const QuikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Quick Invoice',
                style: AppStyles.styleSemiBold20(context),
              ),
              Spacer(),
              CircleAvatar(
                radius: 24,
                backgroundColor: Color(0xffFAFAFA),
                child: Icon(Icons.add),
              )
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Latest Transaction',
            style: AppStyles.styleRegular16(context),
          ),
          SizedBox(height: 12),
          LatestTransactionListView()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/my_cards_section.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/transiction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            MyCardsSection(),
            Divider(
              height: 40,
              color: Color(0xffF1F1F1),
            ),
            TrasnctionHistory(),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_text_styles.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_indicator.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My cards',
          style: AppStyles.styleSemiBold20(context),
        ),
        SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        SizedBox(
          height: 20,
        ),
        CustomIndicator(pageController: pageController)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_text_styles.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/custom_text_fild.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Customer name',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}

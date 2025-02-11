import 'package:flutter/material.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: 16),
          height: 65,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(16)),
        );
      },
    );
  }
}

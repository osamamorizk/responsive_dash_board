import 'package:flutter/material.dart';
import 'package:responsive_ui_app/core/helpers/app_assets.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/data/models/expensess_item_model.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/all_expensess_header.dart';
import 'package:responsive_ui_app/features/responsive_dashboard/presentation/views/widgets/expensses_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          AllExpensessHedear(),
          SizedBox(height: 16),
          ExpensesListView()
        ],
      ),
    );
  }
}

class ExpensesListView extends StatefulWidget {
  const ExpensesListView({super.key});

  @override
  State<ExpensesListView> createState() => _ExpensesListViewState();
}

class _ExpensesListViewState extends State<ExpensesListView> {
  final items = [
    ExpensessItemModel(
        icon: Assets.imagesBalance, title: 'Balance', price: r'$20,129'),
    ExpensessItemModel(
        icon: Assets.imagesIncome, title: 'Income', price: r'$20,129'),
    ExpensessItemModel(
        icon: Assets.imagesExpenses, title: 'Expenses', price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(
          child: GestureDetector(
              onTap: () => setState(() {
                    selectedIndex = 0;
                  }),
              child: AllExpensesItem(
                expensessItemModel: items[0],
                isSelected: selectedIndex == 0,
              )),
        ),
        Expanded(
          child: GestureDetector(
              onTap: () => setState(() {
                    selectedIndex = 1;
                  }),
              child: AllExpensesItem(
                expensessItemModel: items[1],
                isSelected: selectedIndex == 1,
              )),
        ),
        Expanded(
          child: GestureDetector(
              onTap: () => setState(() {
                    selectedIndex = 2;
                  }),
              child: AllExpensesItem(
                expensessItemModel: items[2],
                isSelected: selectedIndex == 2,
              )),
        )
      ],
    );
    // Row(
    //   children: items
    //       .asMap()
    //       .entries
    //       .map((e) => Expanded(
    //             child: GestureDetector(
    //                 onTap: () => setState(() {
    //                       selectedIndex = e.key;
    //                     }),
    //                 child: AllExpensesItem(
    //                   expensessItemModel: e.value,
    //                   isSelected: selectedIndex == e.key,
    //                 )),
    //           ))
    //       .toList(),
    // );
  }
}

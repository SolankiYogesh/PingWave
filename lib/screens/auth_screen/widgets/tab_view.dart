import 'package:flutter/material.dart';
import 'package:ping_wave/helpers/app_colors.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  _TabViewState createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _selectedColor = AppColors.black;
  final _unselectedColor = AppColors.greyShade64;
  final backgroundColor = AppColors.white;
  final borderColor = AppColors.greyShadeCB;

  final _tabs = [
    Tab(text: 'Login'),
    Tab(text: 'Register'),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          TabBar(
            controller: _tabController,
            tabs: _tabs,
            unselectedLabelColor: _unselectedColor,
            labelColor: _selectedColor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              color: backgroundColor,
              border: Border.all(color: borderColor),
            ),
          ),
        ]
            .map((item) => Column(
                  /// Added a divider after each item to let the tabbars have room to breathe
                  children: [
                    item,
                    Divider(
                      color: Colors.transparent,
                    )
                  ],
                ))
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ping_wave/helpers/app_colors.dart';
import 'package:ping_wave/screens/auth_screen/widgets/login_page.dart';
import 'package:ping_wave/screens/auth_screen/widgets/register_page.dart';

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
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.greyShade2e,
            borderRadius: BorderRadius.circular(80.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: TabBar(
              dividerColor: Colors.transparent,
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
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              LoginPage(),
              RegisterPage(),
            ],
          ),
        ),
      ],
    );
  }
}

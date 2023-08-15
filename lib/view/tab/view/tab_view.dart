import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../model/tab_model.dart';

class MainTabView extends StatelessWidget {
  MainTabView({super.key});

  final _items = TabModels.create().tabItems;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(children: _items.map((e) => e.page).toList()),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          height: 60,
          child: TabBar(
            padding: EdgeInsets.zero,
            dividerColor: Colors.transparent,
            indicatorColor: Colors.transparent,
            labelColor: const Color(0xFFFF4201),
            labelStyle: context.general.textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
            unselectedLabelStyle: context.general.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.3,
            ),
            unselectedLabelColor: Colors.grey.shade700,
            tabs: _items
                .map(
                  (e) => Tab(iconMargin: const EdgeInsets.only(bottom: 2), text: e.title.tr(), icon: e.icon),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

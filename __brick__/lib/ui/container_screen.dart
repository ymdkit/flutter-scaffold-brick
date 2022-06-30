import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:{{project_name}}/route/app_router.dart';

class ContainerScreen extends HookConsumerWidget {
  const ContainerScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabs{{project_name}}(
      routes: const [
        FeatureAContainer(),
        FeatureBContainer(),
      ],
      bottomNavigationBuilder: (_, router) {
        return BottomNavigationBar(
          currentIndex: router.activeIndex,
          onTap: router.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'FeatureA',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'FeatureB',
            ),
          ],
        );
      },
    );
  }
}

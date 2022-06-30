
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name}}/ui/page/feature_a/feature_a_page.dart';
import 'package:{{project_name}}/ui/page/feature_b/feature_b_page.dart';

import '../ui/container_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: ContainerScreen,
      children: [
        AutoRoute(
          path: 'feature-a',
          page: EmptyRouterPage,
          name: 'FeatureAContainer',
          children: [
            AutoRoute(path: '', page: FeatureAPage),
          ],
        ),
        AutoRoute(
          path: 'feature-b',
          page: EmptyRouterPage,
          name: 'FeatureBContainer',
          children: [
            AutoRoute(path: '', page: FeatureBPage),
          ],
        ),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {
  AppRouter();
}

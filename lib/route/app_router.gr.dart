// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ContainerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ContainerScreen());
    },
    FeatureAContainer.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    FeatureBContainer.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    FeatureARoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const FeatureAPage());
    },
    FeatureBRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const FeatureBPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(ContainerRoute.name, path: '/', children: [
          RouteConfig(FeatureAContainer.name,
              path: 'feature-a',
              parent: ContainerRoute.name,
              children: [
                RouteConfig(FeatureARoute.name,
                    path: '', parent: FeatureAContainer.name)
              ]),
          RouteConfig(FeatureBContainer.name,
              path: 'feature-b',
              parent: ContainerRoute.name,
              children: [
                RouteConfig(FeatureBRoute.name,
                    path: '', parent: FeatureBContainer.name)
              ])
        ])
      ];
}

/// generated route for
/// [ContainerScreen]
class ContainerRoute extends PageRouteInfo<void> {
  const ContainerRoute({List<PageRouteInfo>? children})
      : super(ContainerRoute.name, path: '/', initialChildren: children);

  static const String name = 'ContainerRoute';
}

/// generated route for
/// [EmptyRouterPage]
class FeatureAContainer extends PageRouteInfo<void> {
  const FeatureAContainer({List<PageRouteInfo>? children})
      : super(FeatureAContainer.name,
            path: 'feature-a', initialChildren: children);

  static const String name = 'FeatureAContainer';
}

/// generated route for
/// [EmptyRouterPage]
class FeatureBContainer extends PageRouteInfo<void> {
  const FeatureBContainer({List<PageRouteInfo>? children})
      : super(FeatureBContainer.name,
            path: 'feature-b', initialChildren: children);

  static const String name = 'FeatureBContainer';
}

/// generated route for
/// [FeatureAPage]
class FeatureARoute extends PageRouteInfo<void> {
  const FeatureARoute() : super(FeatureARoute.name, path: '');

  static const String name = 'FeatureARoute';
}

/// generated route for
/// [FeatureBPage]
class FeatureBRoute extends PageRouteInfo<void> {
  const FeatureBRoute() : super(FeatureBRoute.name, path: '');

  static const String name = 'FeatureBRoute';
}

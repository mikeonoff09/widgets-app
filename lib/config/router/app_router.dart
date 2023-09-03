import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.cards,
      name: CardsScreen.name,
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: AppRoutes.buttons,
      name: ButtonsScreen.name,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: AppRoutes.appTutorial,
      name: AppTutorialScreen.name,
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: AppRoutes.animated,
      name: AnimatedScreen.name,
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: AppRoutes.infiniteScroll,
      name: InfiniteScrollScreen.name,
      builder: (context, state) => const InfiniteScrollScreen(),
    ),
    GoRoute(
      path: AppRoutes.progress,
      name: ProgressScreen.name,
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: AppRoutes.snackbars,
      name: SnackbarScreen.name,
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: AppRoutes.uiControls,
      name: UiControlsScreen.name,
      builder: (context, state) => const UiControlsScreen(),
    ),
  ],
);

class AppRoutes {
  static const String home = '/home';
  static const String cards = '/cards';
  static const String buttons = '/buttons';
  static const String appTutorial = '/app_tutorial';
  static const String animated = '/animated';
  static const String infiniteScroll = '/infinite_scroll';
  static const String progress = '/progress';
  static const String snackbars = '/snackbars';
  static const String uiControls = '/ui_controls';
}

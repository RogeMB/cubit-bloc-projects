import 'package:go_router/go_router.dart';

import '../../features/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/counter-cubit',
    name: 'counter-cubit',
    builder: (context, state) => const CubitScreen(),
  ),
  GoRoute(
    path: '/bloc-cubit',
    name: 'bloc-cubit',
    builder: (context, state) => const HomeScreen(),
  ),
]);

import 'package:cinemapedia/presentation/screen/screens.dart';
import 'package:cinemapedia/presentation/view/view.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return HomeScreen(childView: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return const HomeView();
          },
          routes: [
            GoRoute(
              path: 'movie/:id',
              name: MovieScreen.name,
              builder: (context, state) {
                final movieID = state.pathParameters['id'] ?? 'no-id';
                return MovieScreen(movieId: movieID);
              },
            ),
          ],
        ),
        GoRoute(
          path: '/favorites',
          builder: (context, state) {
            return const FavoriteView();
          },
        ),
      ]
    ),

    // Rutas padre/hija
    // GoRoute(
    //   path: '/',
    //   name: HomeScreen.name,
    //   builder: (context, state) => const HomeScreen(childView: HomeView()),
    //   routes: [
    //     GoRoute(
    //       path: 'movie/:id',
    //       name: MovieScreen.name,
    //       builder: (context, state) {
    //         final movieID = state.pathParameters['id'] ?? 'no-id';
    //         return MovieScreen(movieId: movieID);
    //       },
    //     ),
    //   ],
    // ),
  ],
);

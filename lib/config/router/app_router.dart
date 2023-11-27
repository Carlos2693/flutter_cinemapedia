import 'package:cinemapedia/presentation/screen/screens.dart';
import 'package:cinemapedia/presentation/view/view.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(childView: HomeView()),
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
  ],
);

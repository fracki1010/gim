import 'package:go_router/go_router.dart';

import '../../presentation/screen/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: [
    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        //para referenciar  en cual pagina estoy
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');
        return HomeScreen(pageIndex: pageIndex);
      },
    ),

    //para redireccionar
    GoRoute(
      path: '/',
      redirect: (context, state) => '/home/0',
    )
  ],
);

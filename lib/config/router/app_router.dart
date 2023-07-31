import 'package:allpay/features/auth/presentation/screens/screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  )
]);

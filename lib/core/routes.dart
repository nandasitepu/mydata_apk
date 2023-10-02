import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydata_apk/features/views/homepage.dart';
import 'package:mydata_apk/features/views/hukum/hukum_index.dart';
import 'package:mydata_apk/features/views/hukum/hukum_search.dart';
import 'package:mydata_apk/features/views/hukum/my_hukum.dart';
import 'package:mydata_apk/features/views/loginpage.dart';
import 'package:mydata_apk/features/views/welcomepage.dart';

// named routes

final GoRouter router = GoRouter(
  initialLocation: "/",
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyLogin(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      path: '/hukum',
      builder: (context, state) => const MyHukum(),
    ),
    GoRoute(
      path: '/hukum/index',
      builder: (context, state) => const HukumIndex(),
    ),
    GoRoute(
      path: '/hukum/search',
      builder: (context, state) => const MyHukumSearch(
        appBarTitle: "Hukum Search",
      ),
    ),
    GoRoute(
      path: '/logout',
      builder: (context, state) => const MyLogin(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const MyLogin(),
    ),
    GoRoute(
      path: '/welcome',
      builder: (context, state) {
        final user = state.extra! as GoogleSignInAccount;
        return MyWelcome(
          user: user,
        );
      },
    ),
  ],
);

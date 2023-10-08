import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydata_apk/features/views/auth/registerpage.dart';
import 'package:mydata_apk/features/views/homepage.dart';
import 'package:mydata_apk/features/views/hukum/hukum_index.dart';
import 'package:mydata_apk/features/views/hukum/hukum_search.dart';
import 'package:mydata_apk/features/views/hukum/my_hukum.dart';
import 'package:mydata_apk/features/views/auth/loginpage.dart';
import 'package:mydata_apk/features/views/users/profilepage.dart';
import 'package:mydata_apk/features/views/welcomepage.dart';

// named routes

final GoRouter router = GoRouter(
  initialLocation: "/",
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: '/',
      name: 'initialpage',
      builder: (context, state) => const MyLogin(),
    ),
    GoRoute(
      path: '/homepage',
      name: 'homepage',
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      path: '/hukum',
      name: 'hukum',
      builder: (context, state) => const MyHukum(),
      routes: [
        GoRoute(
          path: 'hukum/index',
          name: 'hukum.index',
          builder: (context, state) => const HukumIndex(),
        ),
        GoRoute(
          path: 'hukum/search',
          name: 'hukum.search',
          builder: (context, state) => const MyHukumSearch(
            appBarTitle: "Hukum Search",
          ),
        ),
      ],
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
      path: '/register',
      builder: (context, state) => const RegisterPage(),
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
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfilePage(),
    ),
  ],
);

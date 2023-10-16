import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mydata_apk/features/views/auth/registerpage.dart';
import 'package:mydata_apk/features/views/homepage.dart';
import 'package:mydata_apk/features/views/hukum/peraturan/peraturan_detail.dart';
import 'package:mydata_apk/features/views/hukum/peraturan/peraturan_home.dart';

import 'package:mydata_apk/features/views/hukum/peraturan/peraturan_index.dart';
import 'package:mydata_apk/features/views/hukum/hukum_search.dart';
import 'package:mydata_apk/features/views/hukum/institusi/institusi_index.dart';
import 'package:mydata_apk/features/views/hukum/hukum_home.dart';
import 'package:mydata_apk/features/views/auth/loginpage.dart';
import 'package:mydata_apk/features/views/users/profilepage.dart';
import 'package:mydata_apk/features/views/welcomepage.dart';

// named routes

final GoRouter router = GoRouter(
  initialLocation: "/",
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
        path: '/',
        name: 'initialpage',
        builder: (context, state) => const MyLogin(),
        routes: [
          GoRoute(
            path: 'homepage',
            name: 'homepage',
            builder: (context, state) => const Homepage(),
          ),
          GoRoute(
            path: 'hukum',
            name: 'hukum',
            builder: (context, state) => const HukumHome(),
            routes: [
              //Peraturan
              GoRoute(
                path: 'peraturan',
                name: 'peraturan',
                builder: (context, state) => const PeraturanHome(),
                routes: [
                  GoRoute(
                    path: ':name',
                    name: 'peraturan.index',
                    builder: (context, state) => PeraturanIndex(
                      name: state.pathParameters["name"]!,
                    ),
                  ),
                  GoRoute(
                    path: 'detail',
                    name: 'peraturan.detail',
                    builder: (context, state) => const PeraturanDetail(),
                  ),
                ],
              ),
              //Institusi
              GoRoute(
                path: 'institusi',
                name: 'hukum.institusi',
                builder: (context, state) => const HukumInstitusi(),
              ),
              // Search
              GoRoute(
                path: 'search',
                name: 'hukum.search',
                builder: (context, state) => const HukumSearch(
                  appBarTitle: "Hukum Search",
                ),
              ),
            ],
          ),
          GoRoute(
            path: 'logout',
            name: 'logout',
            builder: (context, state) => const MyLogin(),
          ),
          GoRoute(
            path: 'login',
            name: 'login',
            builder: (context, state) => const MyLogin(),
          ),
          GoRoute(
            path: 'register',
            name: 'register',
            builder: (context, state) => const RegisterPage(),
          ),
          GoRoute(
            path: 'welcome',
            name: 'welcome',
            builder: (context, state) {
              final user = state.extra! as GoogleSignInAccount;
              return MyWelcome(
                user: user,
              );
            },
          ),
          GoRoute(
            path: 'profile',
            name: 'profile',
            builder: (context, state) => const ProfilePage(),
          ),
        ]),
  ],
);

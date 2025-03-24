// File: core/app_router.dart
import 'package:go_router/go_router.dart';
import '../views/auth/login_screen.dart';
import '../views/auth/profile_setup_screen.dart';
import '../views/home/home_screen.dart';
import '../views/home/discover_screen.dart';
import '../views/home/matches_screen.dart';
import '../views/home/chat_list_screen.dart';
import '../views/home/profile_screen.dart';
import '../views/chat/chat_screen.dart';
import '../views/settings/edit_preferences_screen.dart';
import '../views/settings/notifications_screen.dart';
import '../views/settings/blocked_users_screen.dart';
import '../views/settings/faq_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/profile-setup', builder: (_, __) => const ProfileSetupScreen()),
      GoRoute(path: '/home', builder: (_, __) => const HomeScreen()),
      GoRoute(path: '/discover', builder: (_, __) => const DiscoverScreen()),
      GoRoute(path: '/matches', builder: (_, __) => const MatchesScreen()),
      GoRoute(path: '/chat', builder: (_, __) => const ChatListScreen()),
      GoRoute(path: '/chat/:userId', builder: (context, state) => ChatScreen(userId: state.params['userId']!)),
      GoRoute(path: '/profile', builder: (_, __) => const ProfileScreen()),
      GoRoute(path: '/edit-preferences', builder: (_, __) => const EditPreferencesScreen()),
      GoRoute(path: '/notifications', builder: (_, __) => const NotificationsScreen()),
      GoRoute(path: '/blocked-users', builder: (_, __) => const BlockedUsersScreen()),
      GoRoute(path: '/faq', builder: (_, __) => const FAQScreen()),
    ],
  );
}
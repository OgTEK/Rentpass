import 'package:flutter/material.dart';
import 'profile.dart';
import 'chat.dart';
import 'home.dart';
import 'community.dart';
import 'wallet.dart';

void main() {
  const Color seedColor = Color(0xFF00E6B3); // Replace with your seed color
  final ColorScheme scheme = ColorScheme.fromSeed(seedColor: seedColor);

  runApp(MyApp(scheme: scheme));
}

class MyApp extends StatelessWidget {
  final ColorScheme scheme;

  const MyApp({super.key, required this.scheme});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system, // Use system to respect device theme settings
      darkTheme: ThemeData(
        colorScheme: scheme.copyWith(brightness: Brightness.dark),
        useMaterial3: true,
        // Define dark theme properties here
      ),
      theme: ThemeData(
        colorScheme: scheme.copyWith(brightness: Brightness.light),
        useMaterial3: true,
        // Define light theme properties here
      ),
      home: MainPage(scheme: scheme), // Pass colorScheme to MainPage
    );
  }
}

class MainPage extends StatefulWidget {
  final ColorScheme scheme;

  const MainPage({super.key, required this.scheme});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(colorScheme: widget.scheme, profileImageUrl: 'http://portfolio.asxds.com/assets/imgs/profile.jpg'), // Replace with actual profile image URL
      const ChatPage(),
      const CommunityPage(),
      const WalletPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          NavigationDestination(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

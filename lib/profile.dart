import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        children: [
          UserProfileCard(
            userName: 'John Doe',
            userEmail: 'john.doe@example.com',
            userImageUrl: 'https://via.placeholder.com/150', // Placeholder image URL
          ),
          SizedBox(height: 20),
          Expanded(child: SettingsList()),
        ],
      ),
    );
  }
}

class UserProfileCard extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String userImageUrl;

  const UserProfileCard({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.userImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(userImageUrl),
              radius: 40,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  userEmail,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SettingsItem> settings = [
      SettingsItem(
        title: 'Account',
        icon: Icons.person,
        onTap: () {
          // Handle Account tap
        },
      ),
      SettingsItem(
        title: 'Notifications',
        icon: Icons.notifications,
        onTap: () {
          // Handle Notifications tap
        },
      ),
      SettingsItem(
        title: 'Privacy',
        icon: Icons.lock,
        onTap: () {
          // Handle Privacy tap
        },
      ),
      SettingsItem(
        title: 'Help',
        icon: Icons.help,
        onTap: () {
          // Handle Help tap
        },
      ),
      SettingsItem(
        title: 'About',
        icon: Icons.info,
        onTap: () {
          // Handle About tap
        },
      ),
    ];

    return ListView.builder(
      itemCount: settings.length,
      itemBuilder: (context, index) {
        return SettingsListItem(setting: settings[index]);
      },
    );
  }
}

class SettingsItem {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  SettingsItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}

class SettingsListItem extends StatelessWidget {
  final SettingsItem setting;

  const SettingsListItem({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(setting.icon),
      title: Text(setting.title),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: setting.onTap,
    );
  }
}

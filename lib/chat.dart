import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: const ChatList(),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatItem> chats = [
      ChatItem(
        name: 'Alice',
        message: 'Hey, how are you?',
        profileImageUrl: 'https://example.com/alice.jpg',
      ),
      ChatItem(
        name: 'Bob',
        message: 'Are we still on for tomorrow?',
        profileImageUrl: 'https://example.com/bob.jpg',
      ),
      ChatItem(
        name: 'Charlie',
        message: 'Don\'t forget the meeting at 3 PM.',
        profileImageUrl: 'https://example.com/charlie.jpg',
      ),
      // Add more ChatItem objects here...
    ];

    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        return ChatListItem(chat: chats[index]);
      },
    );
  }
}

class ChatItem {
  final String name;
  final String message;
  final String profileImageUrl;

  ChatItem({
    required this.name,
    required this.message,
    required this.profileImageUrl,
  });
}

class ChatListItem extends StatelessWidget {
  final ChatItem chat;

  const ChatListItem({super.key, required this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chat.profileImageUrl),
      ),
      title: Text(chat.name),
      subtitle: Text(chat.message),
      onTap: () {
        // Handle chat item tap
      },
    );
  }
}

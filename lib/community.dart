import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Post> posts = [
      Post(
        userName: 'John Doe',
        userImageUrl: 'https://via.placeholder.com/150',
        timeAgo: '2 hours ago',
        content: 'This is a sample post content by John Doe.',
        comments: [
          Comment(
            userName: 'Jane Smith',
            userImageUrl: 'https://via.placeholder.com/150',
            timeAgo: '1 hour ago',
            content: 'Nice post, John!',
          ),
        ],
      ),
      Post(
        userName: 'Alice Johnson',
        userImageUrl: 'https://via.placeholder.com/150',
        timeAgo: '3 hours ago',
        content: 'Hello, this is Alice. How are you all doing?',
        comments: [
          Comment(
            userName: 'Bob Williams',
            userImageUrl: 'https://via.placeholder.com/150',
            timeAgo: '2 hours ago',
            content: 'Hi Alice, I am doing great. How about you?',
          ),
        ],
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostCard(post: posts[index]);
        },
      ),
    );
  }
}

class Post {
  final String userName;
  final String userImageUrl;
  final String timeAgo;
  final String content;
  final List<Comment> comments;

  Post({
    required this.userName,
    required this.userImageUrl,
    required this.timeAgo,
    required this.content,
    required this.comments,
  });
}

class Comment {
  final String userName;
  final String userImageUrl;
  final String timeAgo;
  final String content;

  Comment({
    required this.userName,
    required this.userImageUrl,
    required this.timeAgo,
    required this.content,
  });
}

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(post.userImageUrl),
                  radius: 20,
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      post.timeAgo,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(post.content),
            const SizedBox(height: 16),
            const Divider(),
            const Text(
              'Comments',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...post.comments.map((comment) => CommentCard(comment: comment)),
          ],
        ),
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  final Comment comment;

  const CommentCard({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(comment.userImageUrl),
            radius: 16,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                comment.userName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                comment.timeAgo,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Text(comment.content),
            ],
          ),
        ],
      ),
    );
  }
}

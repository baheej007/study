import 'package:flutter/material.dart';
class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  final List<Map<String, String>> users = const [
    {
      'name': 'John Doe',
      'image':
          'https://randomuser.me/api/portraits/men/32.jpg'
    },
    {
      'name': 'Emma Watson',
      'image':
          'https://randomuser.me/api/portraits/women/44.jpg'
    },
    {
      'name': 'Chris Evans',
      'image':
          'https://randomuser.me/api/portraits/men/15.jpg'
    },
    {
      'name': 'Scarlett Johansson',
      'image':
          'https://randomuser.me/api/portraits/women/55.jpg'
    },
    {
      'name': 'Tom Holland',
      'image':
          'https://randomuser.me/api/portraits/men/28.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Example"),
        backgroundColor: Colors.amberAccent,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user['image']!),
            ),
            title: Text(user['name']!),
            subtitle: Text("Tap to view profile"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  List<Map<String, String>> users = [
    {
      'name': 'John Doe',
      'image': 'https://randomuser.me/api/portraits/men/32.jpg'
    },
    {
      'name': 'Emma Watson',
      'image': 'https://randomuser.me/api/portraits/women/44.jpg'
    },
    {
      'name': 'Chris Evans',
      'image': 'https://randomuser.me/api/portraits/men/15.jpg'
    },
    {
      'name': 'Scarlett Johansson',
      'image': 'https://randomuser.me/api/portraits/women/55.jpg'
    },
    {
      'name': 'Tom Holland',
      'image': 'https://randomuser.me/api/portraits/men/28.jpg'
    },
  ];

  final TextEditingController nameController = TextEditingController();
  final TextEditingController imageController = TextEditingController();

  void _addUserDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Add New User"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: "Name",
              ),
            ),
            TextField(
              controller: imageController,
              decoration: const InputDecoration(
                labelText: "Image URL",
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              nameController.clear();
              imageController.clear();
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              if (nameController.text.isNotEmpty &&
                  imageController.text.isNotEmpty) {
                setState(() {
                  users.add({
                    'name': nameController.text,
                    'image': imageController.text,
                  });
                });
                nameController.clear();
                imageController.clear();
                Navigator.pop(context);
              }
            },
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }

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
            subtitle: const Text("Tap to view profile"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amberAccent,
        onPressed: _addUserDialog,
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}

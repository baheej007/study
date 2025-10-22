import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  final List<Map<String, String>> items = const [
    {
      'name': 'Nature',
      'image': 'https://images.unsplash.com/photo-1506744038136-46273834b3fb'
    },
    {
      'name': 'City',
      'image': 'https://images.unsplash.com/photo-1508057198894-247b23fe5ade'
    },
    {
      'name': 'Beach',
      'image': 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e'
    },
    {
      'name': 'Mountains',
      'image': 'https://images.unsplash.com/photo-1501785888041-af3ef285b470'
    },
    {
      'name': 'Forest',
      'image': 'https://images.unsplash.com/photo-1470770841072-f978cf4d019e'
    },
    {
      'name': 'Desert',
      'image': 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.9,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 4,
              child: Column(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15)),
                      child: Image.network(
                        item['image']!,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item['name']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

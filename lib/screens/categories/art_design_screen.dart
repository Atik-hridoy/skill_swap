import 'package:flutter/material.dart';

class ArtDesignScreen extends StatefulWidget {
  const ArtDesignScreen({super.key});

  @override
  _ArtDesignScreenState createState() => _ArtDesignScreenState();
}

class _ArtDesignScreenState extends State<ArtDesignScreen> {
  // Sample data
  final List<String> artCategories = [
    'Painting',
    'Digital Art',
    'Sketching',
    'Sculpture',
    'Animation',
  ];

  final List<String> popularWorks = [
    'Starry Night - Vincent',
    'Digital Portrait - John',
    'Sculpture - Modern Art',
    'Fantasy Landscape - Alex',
  ];

  final List<String> challenges = [
    'Draw a self-portrait.',
    'Create a fantasy creature.',
    'Recreate a famous painting.',
    'Design a modern logo.',
  ];

  final List<String> resources = [
    'Brush Pack for Procreate',
    'Color Theory Basics',
    'Reference Poses',
    'Free Vector Templates',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art & Design'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Art Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: artCategories.length,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      width: 120,
                      child: Center(
                        child: Text(
                          artCategories[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Popular Works',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: popularWorks.map((work) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    leading: Icon(Icons.image, color: Colors.purple),
                    title: Text(work),
                    onTap: () {
                      // Show full details
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Weekly Challenges',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: challenges.map((challenge) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    leading: Icon(Icons.brush, color: Colors.purple),
                    title: Text(challenge),
                    onTap: () {
                      // Navigate to challenge details
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Resources & Tools',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                children: resources.map((resource) {
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    leading: Icon(Icons.download, color: Colors.purple),
                    title: Text(resource),
                    onTap: () {
                      // Download resource or view details
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to Art Upload/Collaboration section
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                ),
                child: const Center(
                  child: Text(
                    'Collaborate on a Project',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

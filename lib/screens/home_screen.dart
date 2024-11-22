import 'package:flutter/material.dart';
import 'categories/programming_screen.dart';
import 'categories/art_design_screen.dart';
import 'categories/language_learning_screen.dart';
import 'categories/music_screen.dart';
import 'categories/sports_screen.dart';
import 'categories/science_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Controller for the search bar text input
  TextEditingController _searchController = TextEditingController();

  // Helper function to create a category tile
  Widget _buildCategoryItem(
      BuildContext context, IconData icon, String title, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: Colors.deepPurple),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skill Swap'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Box under the AppBar
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Search for skill',
                  hintStyle: const TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: Colors.deepPurple.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search, color: Colors.white),
                ),
                style: const TextStyle(color: Colors.white),
                onChanged: (query) {
                  // Handle search logic here (e.g., filter category tiles)
                },
              ),
            ),

            // Category Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildCategoryItem(
                      context, Icons.code, 'Programming', ProgrammingScreen()),
                  _buildCategoryItem(context, Icons.palette, 'Art & Design',
                      const ArtDesignScreen()),
                  _buildCategoryItem(context, Icons.language,
                      'Language Learning', const LanguageLearningScreen()),
                  _buildCategoryItem(
                      context, Icons.music_note, 'Music', const MusicScreen()),
                  _buildCategoryItem(context, Icons.sports_soccer, 'Sports',
                      const SportsScreen()),
                  _buildCategoryItem(
                      context, Icons.science, 'Science', const ScienceScreen()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProgrammingScreen extends StatefulWidget {
  ProgrammingScreen({super.key});

  @override
  _ProgrammingScreenState createState() => _ProgrammingScreenState();
}

class _ProgrammingScreenState extends State<ProgrammingScreen> {
  final List<String> languages = [
    'Python',
    'JavaScript',
    'Dart',
    'Java',
    'C++'
  ];
  final List<String> skillLevels = ['Beginner', 'Intermediate', 'Advanced'];
  final List<String> challenges = [
    'Build a calculator app',
    'Create a to-do list app',
    'Solve a sorting algorithm challenge',
  ];
  final List<String> projects = [
    'Open Source Web App',
    'Mobile App for Task Management',
    'Machine Learning Model Project',
  ];
  final List<String> mentors = [
    'John Doe - Python Expert',
    'Jane Smith - JavaScript Guru',
    'Alex Johnson - Dart Enthusiast',
  ];

  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isAnimating = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programming Skills'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Skill Level:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              AnimatedOpacity(
                opacity: _isAnimating ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: DropdownButton<String>(
                  items: skillLevels.map((level) {
                    return DropdownMenuItem<String>(
                      value: level,
                      child: Text(level),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  hint: const Text('Select Skill Level'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Select Programming Language:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              AnimatedOpacity(
                opacity: _isAnimating ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: DropdownButton<String>(
                  items: languages.map((lang) {
                    return DropdownMenuItem<String>(
                      value: lang,
                      child: Text(lang),
                    );
                  }).toList(),
                  onChanged: (value) {},
                  hint: const Text('Select Language'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Mini Coding Challenges:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: challenges.map((challenge) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: _isAnimating ? Colors.deepPurple : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(challenge),
                      onTap: () {},
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Ongoing Projects to Join:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: projects.map((project) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: _isAnimating ? Colors.deepPurple : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(project),
                      onTap: () {},
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              const Text(
                'Find a Mentor:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: mentors.map((mentor) {
                  return AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: _isAnimating ? Colors.deepPurple : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(mentor),
                      onTap: () {},
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// File: widgets/match_card.dart
import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String name;
  final String experience;
  final String gym;
  final String imageUrl;

  const MatchCard({
    super.key,
    required this.name,
    required this.experience,
    required this.gym,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
              radius: 30,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(experience, style: const TextStyle(color: Colors.grey)),
                Text(gym, style: const TextStyle(color: Colors.blueAccent)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
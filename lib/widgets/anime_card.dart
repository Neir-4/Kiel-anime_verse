import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../config/routes.dart';

class AnimeCard extends StatelessWidget {
  final String id;
  final String title;
  final String imagePath;

  const AnimeCard({
    super.key,
    required this.id,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF0b395e),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.push('${AppRoutes.details}/$id'),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
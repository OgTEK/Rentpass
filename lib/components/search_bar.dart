import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomSearchBar extends StatelessWidget {
  final ColorScheme colorScheme;
  final String profileImageUrl;

  const CustomSearchBar({
    super.key,
    required this.colorScheme,
    required this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: colorScheme.surface,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            color: colorScheme.onSurface,
            onPressed: () {
              // Handle menu button press
            },
          ),
          const Gap(8),
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: colorScheme.onSurface.withOpacity(0.1)),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: colorScheme.onSurface.withOpacity(0.6)),
                  const Gap(8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search...',
                        hintStyle: TextStyle(color: colorScheme.onSurface.withOpacity(0.6)),
                      ),
                      style: TextStyle(color: colorScheme.onSurface),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(8),
          CircleAvatar(
            backgroundImage: NetworkImage(profileImageUrl),
            radius: 20,
          ),
        ],
      ),
    );
  }
}

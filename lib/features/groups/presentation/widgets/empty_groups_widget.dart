import 'package:flutter/material.dart';

class EmptyGroupsWidget extends StatelessWidget {
  const EmptyGroupsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.groups, size: 100, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            'لا توجد مجموعات',
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(color: Colors.grey[600]),
          ),
          const SizedBox(height: 8),
          Text(
            'انقر على زر الإضافة لإنشاء مجموعة جديدة',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey[500]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

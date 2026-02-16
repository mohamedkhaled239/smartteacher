import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/student.dart';
import '../bloc/groups_bloc.dart';
import '../bloc/groups_event.dart';
import 'student_card.dart';

class GroupStudentsList extends StatelessWidget {
  final List<Student> students;
  final String groupId;

  const GroupStudentsList({
    super.key,
    required this.students,
    required this.groupId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'الطلاب',
              style: Theme.of(
                context,
              ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2196F3).withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () => _showAddStudentDialog(context),
                icon: const Icon(Icons.person_add_alt_1),
                color: const Color(0xFF2196F3),
                tooltip: 'إضافة طالب',
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        if (students.isEmpty)
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: Column(
              children: [
                Icon(Icons.people_outline, size: 48, color: Colors.grey[400]),
                const SizedBox(height: 16),
                Text(
                  'لا يوجد طلاب في هذه المجموعة',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => _showAddStudentDialog(context),
                  style: TextButton.styleFrom(
                    foregroundColor: const Color(0xFF2196F3),
                  ),
                  child: const Text('إضافة طالب الآن'),
                ),
              ],
            ),
          )
        else
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: students.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              return StudentCard(student: students[index], groupId: groupId);
            },
          ),
      ],
    );
  }

  void _showAddStudentDialog(BuildContext context) {
    // Using a local controller for the dialog
    final TextEditingController studentIdController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('إضافة طالب للمجموعة'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'أدخل معرف الطالب (Student ID) لإضافته',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: studentIdController,
              decoration: InputDecoration(
                labelText: 'معرف الطالب',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                prefixIcon: const Icon(Icons.badge_outlined),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('إلغاء'),
          ),
          ElevatedButton(
            onPressed: () {
              final studentId = studentIdController.text.trim();
              if (studentId.isNotEmpty) {
                // Accessing the Bloc from the parent context
                // We use 'context' instead of 'dialogContext' because the BlocProvider
                // is above the GroupDetailsPage which is above this widget
                // but showDialog creates a new route. We need to be careful.
                // Actually, accessing accessing provider from dialog context requires passing it
                // or using the parent context captured in closure.

                // We can use the 'context' (from build method) to access the bloc
                // and pass the event.

                // Reading bloc from parent context:
                final bloc = PluginGroupsBlocProvider(context);
                bloc.add(
                  AddStudentToGroupEvent(
                    groupId: groupId,
                    studentId: studentId,
                  ),
                );

                Navigator.pop(dialogContext);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2196F3),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text('إضافة'),
          ),
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }

  // Helper to get bloc typed safely
  GroupsBloc PluginGroupsBlocProvider(BuildContext context) {
    return context.read<GroupsBloc>();
  }
}

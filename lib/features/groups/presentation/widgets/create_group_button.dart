import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/groups_bloc.dart';
import '../bloc/groups_event.dart';

class CreateGroupButton extends StatelessWidget {
  const CreateGroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => _showCreateDialog(context),
      label: const Text('إنشاء مجموعة'),
      icon: const Icon(Icons.add),
      backgroundColor: const Color(0xFF2196F3),
      foregroundColor: Colors.white,
    );
  }

  void _showCreateDialog(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final subjectController = TextEditingController();
    final levelController = TextEditingController(); // e.g., Grade 10
    final capacityController = TextEditingController(text: '20');

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('إنشاء مجموعة جديدة', textAlign: TextAlign.center),
        content: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'اسم المجموعة',
                    hintText: 'مثال: tolba group',
                    prefixIcon: Icon(Icons.group_outlined),
                  ),
                  validator: (value) =>
                      value?.isEmpty ?? true ? 'الاسم مطلوب' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: subjectController,
                  decoration: const InputDecoration(
                    labelText: 'المادة',
                    hintText: 'مثال: Cs',
                    prefixIcon: Icon(Icons.book_outlined),
                  ),
                  validator: (value) =>
                      value?.isEmpty ?? true ? 'المادة مطلوبة' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: levelController,
                  decoration: const InputDecoration(
                    labelText: 'العيار (الصف)', // Level
                    hintText: 'مثال: Grade 10',
                    prefixIcon: Icon(Icons.school_outlined),
                  ),
                  validator: (value) =>
                      value?.isEmpty ?? true ? 'الصف مطلوب' : null,
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: capacityController,
                  decoration: const InputDecoration(
                    labelText: 'السعة القصوى',
                    hintText: 'مثال: 20',
                    prefixIcon: Icon(Icons.people_outline),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) return 'السعة مطلوبة';
                    if (int.tryParse(value) == null) return 'أدخل رقم صحيح';
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('إلغاء'),
          ),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState?.validate() ?? false) {
                // Accessing the Bloc from the parent context
                final bloc = PluginGroupsBlocProvider(context);

                bloc.add(
                  CreateGroupEvent(
                    name: nameController.text.trim(),
                    subject: subjectController.text.trim(),
                    level: levelController.text.trim(),
                    capacity: int.parse(capacityController.text.trim()),
                  ),
                );

                Navigator.pop(dialogContext);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF2196F3),
              foregroundColor: Colors.white,
            ),
            child: const Text('إنشاء'),
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

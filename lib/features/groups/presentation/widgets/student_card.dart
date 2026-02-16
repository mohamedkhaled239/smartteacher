import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/student.dart';
import '../bloc/groups_bloc.dart';
import '../bloc/groups_event.dart';
import '../bloc/groups_state.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  final String groupId;

  const StudentCard({super.key, required this.student, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        student.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        student.code,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                _buildPaymentStatusBadge(context),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoChip(context, Icons.phone, student.phone),
                _buildInfoChip(
                  context,
                  Icons.payment,
                  student.subscriptionType,
                ),
              ],
            ),
            const SizedBox(height: 8),
            if (student.lastAttendance != null) _buildAttendanceInfo(context),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => _showRemoveDialog(context),
                  icon: const Icon(Icons.remove_circle),
                  color: Colors.red,
                  tooltip: 'إزالة الطالب',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentStatusBadge(BuildContext context) {
    Color color;
    String text;

    switch (student.paymentStatus) {
      case 'paid':
        color = Colors.green;
        text = 'مدفوع';
        break;
      case 'pending':
        color = Colors.orange;
        text = 'معلق';
        break;
      case 'free':
        color = Colors.blue;
        text = 'مجاني';
        break;
      default:
        color = Colors.grey;
        text = student.paymentStatus;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildInfoChip(BuildContext context, IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: Theme.of(context).primaryColor),
        const SizedBox(width: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }

  Widget _buildAttendanceInfo(BuildContext context) {
    final attendance = student.lastAttendance!;
    Color statusColor;
    String statusText;

    switch (attendance.status) {
      case 'present':
        statusColor = Colors.green;
        statusText = 'حاضر';
        break;
      case 'late':
        statusColor = Colors.orange;
        statusText = 'متأخر';
        break;
      case 'absent':
        statusColor = Colors.red;
        statusText = 'غائب';
        break;
      default:
        statusColor = Colors.grey;
        statusText = attendance.status;
    }

    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: statusColor, width: 1),
      ),
      child: Row(
        children: [
          Icon(Icons.calendar_today, size: 14, color: statusColor),
          const SizedBox(width: 8),
          Text(
            'آخر حضور: ${attendance.date}',
            style: TextStyle(color: statusColor, fontSize: 12),
          ),
          const SizedBox(width: 8),
          Text(
            '($statusText)',
            style: TextStyle(
              color: statusColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showRemoveDialog(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('إزالة الطالب'),
        content: Text('هل أنت متأكد من إزالة ${student.name} من المجموعة؟'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('إلغاء'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('إزالة'),
          ),
        ],
      ),
    );

    if (confirmed == true && context.mounted) {
      context.read<GroupsBloc>().add(
        RemoveStudentFromGroupEvent(groupId: groupId, studentId: student.id),
      );

      // Listen for the result
      final subscription = context.read<GroupsBloc>().stream.listen((state) {
        if (state is StudentOperationSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
          // Reload group details
          context.read<GroupsBloc>().add(LoadGroupDetailsEvent(groupId));
        } else if (state is StudentOperationError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        }
      });

      // Cancel subscription after a short delay
      Future.delayed(const Duration(seconds: 2), () {
        subscription.cancel();
      });
    }
  }
}

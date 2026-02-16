import 'package:flutter/material.dart';
import '../../domain/entities/group_details.dart';

class GroupDetailsHeader extends StatelessWidget {
  final GroupDetails groupDetails;

  const GroupDetailsHeader({super.key, required this.groupDetails});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              groupDetails.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            if (groupDetails.description != null) ...[
              const SizedBox(height: 8),
              Text(
                groupDetails.description!,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
              ),
            ],
            const Divider(height: 24),
            _buildInfoRow(context, 'المادة', groupDetails.subject),
            if (groupDetails.gradeLevel != null)
              _buildInfoRow(context, 'المستوى', groupDetails.gradeLevel!),
            _buildInfoRow(
              context,
              'عدد الطلاب',
              '${groupDetails.currentStudentsCount}/${groupDetails.maxStudents}',
            ),
            _buildInfoRow(
              context,
              'السعر الشهري',
              '${groupDetails.monthlyPrice} جنيه مصري',
            ),
            _buildInfoRow(
              context,
              'سعر الحصة',
              '${groupDetails.sessionPrice} جنيه مصري',
            ),
            _buildInfoRow(
              context,
              'عدد الحصص شهرياً',
              '${groupDetails.sessionsPerMonth} حصص',
            ),
            _buildInfoRow(
              context,
              'مدة الحصة',
              '${groupDetails.sessionDurationMinutes} دقيقة',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
          ),
          Text(
            value,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

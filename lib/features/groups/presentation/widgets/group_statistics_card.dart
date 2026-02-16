import 'package:flutter/material.dart';
import '../../domain/entities/group_details.dart';

class GroupStatisticsCard extends StatelessWidget {
  final GroupStatistics statistics;

  const GroupStatisticsCard({super.key, required this.statistics});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('الإحصائيات', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            _buildStatisticsSection(context, 'الحضور الشهري', [
              _StatItem('الإجمالي', '${statistics.monthlyAttendance.total}'),
              _StatItem(
                'حاضر',
                '${statistics.monthlyAttendance.present}',
                color: Colors.green,
              ),
              _StatItem(
                'متأخر',
                '${statistics.monthlyAttendance.late}',
                color: Colors.orange,
              ),
              _StatItem(
                'غائب',
                '${statistics.monthlyAttendance.absent}',
                color: Colors.red,
              ),
            ]),
            const Divider(height: 24),
            _buildStatisticsSection(context, 'الحصص الشهرية', [
              _StatItem('الإجمالي', '${statistics.monthlySessions.total}'),
              _StatItem(
                'مكتملة',
                '${statistics.monthlySessions.completed}',
                color: Colors.green,
              ),
              _StatItem(
                'ملغاة',
                '${statistics.monthlySessions.cancelled}',
                color: Colors.red,
              ),
            ]),
            const Divider(height: 24),
            _buildStatRow(
              context,
              'الإيرادات الشهرية',
              '${statistics.monthlyRevenue.toStringAsFixed(2)} جنيه مصري',
              Colors.green,
            ),
            _buildStatRow(
              context,
              'نسبة الحضور',
              '${statistics.attendanceRate.toStringAsFixed(1)}%',
              Colors.blue,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticsSection(
    BuildContext context,
    String title,
    List<_StatItem> items,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 12,
          runSpacing: 8,
          children: items.map((item) => _buildStatChip(item)).toList(),
        ),
      ],
    );
  }

  Widget _buildStatChip(_StatItem item) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: (item.color ?? Colors.grey).withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: item.color ?? Colors.grey, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            item.label,
            style: TextStyle(
              color: item.color ?? Colors.grey[700],
              fontSize: 12,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            item.value,
            style: TextStyle(
              color: item.color ?? Colors.grey[900],
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatRow(
    BuildContext context,
    String label,
    String value,
    Color color,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem {
  final String label;
  final String value;
  final Color? color;

  _StatItem(this.label, this.value, {this.color});
}

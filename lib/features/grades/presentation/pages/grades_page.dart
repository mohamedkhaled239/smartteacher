import 'package:flutter/material.dart';

class GradesPage extends StatefulWidget {
  const GradesPage({super.key});

  @override
  State<GradesPage> createState() => _GradesPageState();
}

class _GradesPageState extends State<GradesPage> {
  String _selectedSubject = 'الكل';
  final List<String> _subjects = [
    'الكل',
    'رياضيات',
    'علوم',
    'لغة عربية',
    'تاريخ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward_ios, color: Colors.black87),
        ),
        title: const Text(
          'إدارة الدرجات',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.black87),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: _StatCard(
                        title: 'متوسط الفصل',
                        value: '85%',
                        valueColor: Color(0xFF2196F3),
                        backgroundColor: Color(0xFFE3F2FD),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        title: 'نسبة النجاح',
                        value: '92%',
                        valueColor: Color(0xFF4CAF50),
                        backgroundColor: Color(0xFFE8F5E9),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        title: 'الاختبارات',
                        value: '12',
                        valueColor: Colors.black87,
                        backgroundColor: Color(0xFFF5F7FA),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _SearchBar(),
                const SizedBox(height: 16),
                _SubjectFilterChips(
                  selectedSubject: _selectedSubject,
                  subjects: _subjects,
                  onSelected: (subject) {
                    setState(() {
                      _selectedSubject = subject;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'اختبار الشهر - أكتوبر',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                const Text(
                  'قائمة الطلاب',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: const [
                _StudentGradeCard(
                  name: 'أحمد محمد علي',
                  grade: '98/100',
                  percentage: 0.98,
                  status: 'ممتاز',
                  statusColor: Color(0xFF4CAF50),
                  progressColor: Color(0xFF4CAF50),
                  avatarUrl: '',
                ),
                SizedBox(height: 12),
                _StudentGradeCard(
                  name: 'سارة إبراهيم',
                  grade: '85/100',
                  percentage: 0.85,
                  status: 'جيد جداً',
                  statusColor: Color(0xFF2196F3),
                  progressColor: Color(0xFF2196F3),
                  avatarUrl: '',
                ),
                SizedBox(height: 12),
                _StudentGradeCard(
                  name: 'يوسف خالد',
                  grade: '55/100',
                  percentage: 0.55,
                  status: 'يحتاج تحسين',
                  statusColor: Color(0xFFFF9800),
                  progressColor: Color(0xFFFF9800),
                  avatarUrl: '',
                ),
                SizedBox(height: 12),
                _StudentGradeCard(
                  name: 'ليلى محمود',
                  grade: '72/100',
                  percentage: 0.72,
                  status: 'جيد',
                  statusColor: Color(0xFF2196F3),
                  progressColor: Color(0xFF2196F3),
                  avatarUrl: '',
                ),
                SizedBox(height: 12),
                _StudentGradeCard(
                  name: 'عمر حسن',
                  grade: '42/100',
                  percentage: 0.42,
                  status: 'دون المتوسط',
                  statusColor: Color(0xFFF44336),
                  progressColor: Color(0xFFF44336),
                  avatarUrl: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  final Color backgroundColor;

  const _StatCard({
    required this.title,
    required this.value,
    required this.valueColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          hintText: 'ابحث عن طالب...',
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
          suffixIcon: Icon(Icons.search, color: Colors.grey[400]),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
        ),
      ),
    );
  }
}

class _SubjectFilterChips extends StatelessWidget {
  final String selectedSubject;
  final List<String> subjects;
  final Function(String) onSelected;

  const _SubjectFilterChips({
    required this.selectedSubject,
    required this.subjects,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Row(
        children: subjects.map((subject) {
          final isSelected = selectedSubject == subject;
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: FilterChip(
              label: Text(subject),
              selected: isSelected,
              onSelected: (selected) {
                onSelected(subject);
              },
              backgroundColor: Colors.white,
              selectedColor: const Color(0xFF2196F3),
              labelStyle: TextStyle(
                color: isSelected ? Colors.white : Colors.grey[700],
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: isSelected
                      ? const Color(0xFF2196F3)
                      : Colors.grey[300]!,
                ),
              ),
              showCheckmark: false,
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _StudentGradeCard extends StatelessWidget {
  final String name;
  final String grade;
  final double percentage;
  final String status;
  final Color statusColor;
  final Color progressColor;
  final String avatarUrl;

  const _StudentGradeCard({
    required this.name,
    required this.grade,
    required this.percentage,
    required this.status,
    required this.statusColor,
    required this.progressColor,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  grade,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: LinearProgressIndicator(
                    value: percentage,
                    backgroundColor: Colors.grey[200],
                    color: progressColor,
                    minHeight: 6,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(width: 12),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[200],
                      child: const Icon(
                        Icons.person,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      fontSize: 12,
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

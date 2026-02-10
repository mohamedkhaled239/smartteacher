import 'package:flutter/material.dart';

class StudyGroupsPage extends StatefulWidget {
  const StudyGroupsPage({super.key});

  @override
  State<StudyGroupsPage> createState() => _StudyGroupsPageState();
}

class _StudyGroupsPageState extends State<StudyGroupsPage> {
  String _selectedGrade = 'الكل';
  final List<String> _grades = [
    'الكل',
    'الصف الأول',
    'الصف الثاني عشر',
    'الصف السابع',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'المجموعات الدراسية',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings_outlined, color: Colors.black87),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.black87,
                ),
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.orange[100],
              child: Icon(Icons.person, color: Colors.orange[800], size: 20),
            ),
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
                _SearchBar(),
                const SizedBox(height: 12),
                _GradeFilterChips(
                  selectedGrade: _selectedGrade,
                  grades: _grades,
                  onSelected: (grade) {
                    setState(() {
                      _selectedGrade = grade;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                _GroupCard(
                  title: 'الصف العاشر - مجموعة أ',
                  studentsCount: 25,
                  status: 'نشط الآن',
                  statusColor: Color(0xFF4CAF50),
                  days: 'الاثنين، الأربعاء، الجمعة',
                  time: '14:00 - 15:30',
                  price: 'السعر الكلي: قابل للتعديل (مثلا: 1)',
                  memberCount: 4,
                  imageUrl: '',
                ),
                SizedBox(height: 16),
                _GroupCard(
                  title: 'الصف الثاني عشر - مجموعة ب',
                  studentsCount: 18,
                  status: 'عاطل قريباً',
                  statusColor: Color(0xFFFF9800),
                  days: 'الاثنين، الأربعاء، الجمعة',
                  time: '16:00 - 17:30',
                  price: 'السعر الكلي: قابل للتعديل',
                  memberCount: 3,
                  imageUrl: '',
                ),
                SizedBox(height: 16),
                _ReviewCard(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFF2196F3),
        icon: const Icon(Icons.add, color: Colors.white),
        label: const Text(
          'إضافة مجموعة',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
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
          hintText: 'بحث عن مجموعة أو طالب...',
          hintStyle: TextStyle(color: Colors.grey[400], fontSize: 14),
          prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
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

class _GradeFilterChips extends StatelessWidget {
  final String selectedGrade;
  final List<String> grades;
  final Function(String) onSelected;

  const _GradeFilterChips({
    required this.selectedGrade,
    required this.grades,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Row(
        children: grades.map((grade) {
          final isSelected = selectedGrade == grade;
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: FilterChip(
              label: Text(grade),
              selected: isSelected,
              onSelected: (selected) {
                onSelected(grade);
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

class _GroupCard extends StatelessWidget {
  final String title;
  final int studentsCount;
  final String status;
  final Color statusColor;
  final String days;
  final String time;
  final String price;
  final int memberCount;
  final String imageUrl;

  const _GroupCard({
    required this.title,
    required this.studentsCount,
    required this.status,
    required this.statusColor,
    required this.days,
    required this.time,
    required this.price,
    required this.memberCount,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              image: imageUrl.isNotEmpty
                  ? DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.more_vert, color: Colors.grey, size: 20),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            status,
                            style: TextStyle(
                              color: statusColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),
                _InfoRow(
                  icon: Icons.people_outline,
                  text: '$studentsCount طالب مسجل',
                ),
                const SizedBox(height: 8),
                _InfoRow(icon: Icons.calendar_today_outlined, text: days),
                const SizedBox(height: 8),
                _InfoRow(icon: Icons.access_time_outlined, text: time),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _MemberAvatars(count: memberCount),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2196F3),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        'إدارة المجموعة',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(text, style: TextStyle(fontSize: 13, color: Colors.grey[700])),
        const SizedBox(width: 8),
        Icon(icon, size: 16, color: Colors.grey[600]),
      ],
    );
  }
}

class _MemberAvatars extends StatelessWidget {
  final int count;

  const _MemberAvatars({required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        count.clamp(0, 4),
        (index) => Align(
          widthFactor: 0.7,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey[800],
            child: Text(
              '+${index + 1}',
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  const _ReviewCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const Icon(Icons.school, color: Color(0xFF2196F3), size: 40),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'دروس المراجعة الشهرية',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'الجمعة • 18:00 - 20:00',
                  style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          Text(
            '٢ طلاب',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[700],
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

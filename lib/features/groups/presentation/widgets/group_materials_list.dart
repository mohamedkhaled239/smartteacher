import 'package:flutter/material.dart';
import '../../domain/entities/material.dart';

class GroupMaterialsList extends StatelessWidget {
  final List<GroupMaterial> materials;

  const GroupMaterialsList({super.key, required this.materials});

  @override
  Widget build(BuildContext context) {
    if (materials.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.description, size: 64, color: Colors.grey),
            const SizedBox(height: 16),
            const Text(
              'لا توجد مواد دراسية',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: materials.length,
      itemBuilder: (context, index) {
        final material = materials[index];
        return Card(
          elevation: 2,
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: _buildMaterialIcon(material.materialType),
            title: Text(
              material.title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              material.materialType,
              style: TextStyle(color: Colors.grey[600]),
            ),
            trailing: material.fileUrl != null
                ? IconButton(
                    icon: const Icon(Icons.download, color: Color(0xFF2196F3)),
                    onPressed: () {
                      // Implement download or open URL
                      // We can assume user will click to view
                      // But for now just icon.
                    },
                  )
                : const SizedBox(),
            onTap: () {
              // Open details or URL
            },
          ),
        );
      },
    );
  }

  Widget _buildMaterialIcon(String type) {
    IconData icon;
    Color color;

    switch (type.toLowerCase()) {
      case 'pdf':
        icon = Icons.picture_as_pdf;
        color = Colors.red;
        break;
      case 'video':
        icon = Icons.video_library;
        color = Colors.redAccent;
        break;
      case 'image':
        icon = Icons.image;
        color = Colors.green;
        break;
      case 'audio':
        icon = Icons.audiotrack;
        color = Colors.orange;
        break;
      case 'link':
        icon = Icons.link;
        color = Colors.blue;
        break;
      default:
        icon = Icons.insert_drive_file;
        color = Colors.grey;
    }

    return CircleAvatar(
      backgroundColor: color.withOpacity(0.1),
      child: Icon(icon, color: color),
    );
  }
}

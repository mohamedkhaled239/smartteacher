import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/group.dart';
import '../bloc/groups_bloc.dart';
import '../bloc/groups_event.dart';
import '../bloc/groups_state.dart';
import '../widgets/group_details_header.dart';
import '../widgets/group_students_list.dart';
import '../widgets/group_statistics_card.dart';
import '../widgets/error_message_widget.dart';
import 'group_materials_page.dart';

class GroupDetailsPage extends StatefulWidget {
  final Group group;

  const GroupDetailsPage({super.key, required this.group});

  @override
  State<GroupDetailsPage> createState() => _GroupDetailsPageState();
}

class _GroupDetailsPageState extends State<GroupDetailsPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<GroupsBloc>().add(LoadGroupDetailsEvent(widget.group.id));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.group.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF2196F3),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: BlocConsumer<GroupsBloc, GroupsState>(
        listener: (context, state) {
          if (state is StudentOperationSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.green,
              ),
            );
            // Refresh group details to show the new student
            context.read<GroupsBloc>().add(
              LoadGroupDetailsEvent(widget.group.id),
            );
          } else if (state is StudentOperationError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        buildWhen: (previous, current) =>
            current is GroupDetailsLoading ||
            current is GroupDetailsLoaded ||
            current is GroupDetailsError,
        builder: (context, state) {
          if (state is GroupDetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF2196F3)),
            );
          }

          if (state is GroupDetailsError) {
            return ErrorMessageWidget(
              message: state.message,
              onRetry: () {
                context.read<GroupsBloc>().add(
                  LoadGroupDetailsEvent(widget.group.id),
                );
              },
            );
          }

          if (state is GroupDetailsLoaded) {
            final groupDetails = state.groupDetails;

            return RefreshIndicator(
              color: const Color(0xFF2196F3),
              onRefresh: () async {
                context.read<GroupsBloc>().add(
                  LoadGroupDetailsEvent(widget.group.id),
                );
              },
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GroupDetailsHeader(groupDetails: groupDetails),
                    const SizedBox(height: 24),
                    GroupStatisticsCard(statistics: groupDetails.statistics),
                    const SizedBox(height: 24),
                    _buildMaterialsButton(context, groupDetails.id),
                    const SizedBox(height: 24),
                    GroupStudentsList(
                      students: groupDetails.students,
                      groupId: groupDetails.id,
                    ),
                  ],
                ),
              ),
            );
          }

          // Keep showing the previous state content if possible, or loading
          // Since buildWhen prevents rebuilding for StudentOperation*,
          // we typically won't reach here unless initial state is weird.
          // Fallback to loading if we have nothing.
          if (state is GroupsInitial) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF2196F3)),
            );
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildMaterialsButton(BuildContext context, String groupId) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => GroupMaterialsPage(groupId: groupId),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFF2196F3).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.description,
                  color: Color(0xFF2196F3),
                  size: 28,
                ),
              ),
              const SizedBox(width: 16),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'المواد الدراسية',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'عرض وإضافة المواد الدراسية للمجموعة',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/groups_bloc.dart';
import '../bloc/groups_event.dart';
import '../bloc/groups_state.dart';
import '../widgets/group_card.dart';
import '../widgets/create_group_button.dart';
import '../widgets/empty_groups_widget.dart';
import '../widgets/error_message_widget.dart';

class GroupsPage extends StatefulWidget {
  const GroupsPage({super.key});

  @override
  State<GroupsPage> createState() => _GroupsPageState();
}

class _GroupsPageState extends State<GroupsPage> {
  @override
  void initState() {
    super.initState();
    context.read<GroupsBloc>().add(const LoadGroupsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'المجموعات',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF2196F3),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: BlocConsumer<GroupsBloc, GroupsState>(
        listener: (context, state) {
          if (state is GroupCreated) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('تم إنشاء المجموعة "${state.group.name}" بنجاح'),
                backgroundColor: Colors.green,
              ),
            );
            context.read<GroupsBloc>().add(const LoadGroupsEvent());
          } else if (state is GroupCreateError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        buildWhen: (previous, current) =>
            current is GroupsLoading ||
            current is GroupsLoaded ||
            current is GroupsError,
        builder: (context, state) {
          if (state is GroupsLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF2196F3)),
            );
          }

          if (state is GroupsError) {
            return ErrorMessageWidget(
              message: state.message,
              onRetry: () {
                context.read<GroupsBloc>().add(const LoadGroupsEvent());
              },
            );
          }

          if (state is GroupsLoaded) {
            if (state.groups.isEmpty) {
              return const EmptyGroupsWidget();
            }

            return RefreshIndicator(
              color: const Color(0xFF2196F3),
              onRefresh: () async {
                context.read<GroupsBloc>().add(const LoadGroupsEvent());
              },
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: state.groups.length,
                itemBuilder: (context, index) {
                  final group = state.groups[index];
                  return GroupCard(group: group);
                },
              ),
            );
          }

          // Fallback to loading if we have nothing (e.g. initial state)
          if (state is GroupsInitial) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFF2196F3)),
            );
          }

          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: const CreateGroupButton(),
    );
  }
}

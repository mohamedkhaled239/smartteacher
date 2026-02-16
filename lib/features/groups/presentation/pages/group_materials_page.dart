import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../injection_container.dart';
import '../bloc/groups_bloc.dart';
import '../bloc/groups_event.dart';
import '../bloc/groups_state.dart';
import '../widgets/add_material_dialog.dart';
import '../widgets/group_materials_list.dart';

class GroupMaterialsPage extends StatelessWidget {
  final String groupId;

  const GroupMaterialsPage({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl<GroupsBloc>()..add(LoadGroupMaterialsEvent(groupId)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'المواد الدراسية',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xFF2196F3),
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
        ),
        body: BlocConsumer<GroupsBloc, GroupsState>(
          listener: (context, state) {
            if (state is MaterialOperationSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.green,
                ),
              );
              // Refresh list
              context.read<GroupsBloc>().add(LoadGroupMaterialsEvent(groupId));
            } else if (state is MaterialOperationError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is MaterialsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is MaterialsError) {
              return Center(child: Text(state.message));
            } else if (state is MaterialsLoaded) {
              return GroupMaterialsList(materials: state.materials);
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              heroTag: 'group_materials_fab',
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => BlocProvider.value(
                    value: context.read<GroupsBloc>(),
                    child: AddMaterialDialog(groupId: groupId),
                  ),
                );
              },
              backgroundColor: const Color(0xFF2196F3),
              child: const Icon(Icons.add, color: Colors.white),
            );
          },
        ),
      ),
    );
  }
}

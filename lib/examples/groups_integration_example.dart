import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../injection_container.dart';
import '../../../features/groups/presentation/bloc/groups_bloc.dart';
import '../../../features/groups/presentation/pages/groups_page.dart';

/// Example showing how to integrate the GroupsPage into your app
class GroupsIntegrationExample extends StatelessWidget {
  const GroupsIntegrationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('التطبيق')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to groups page with BLoC provider
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => sl<GroupsBloc>(),
                  child: const GroupsPage(),
                ),
              ),
            );
          },
          child: const Text('عرض المجموعات'),
        ),
      ),
    );
  }
}

/// Alternative: Provide GroupsBloc at a higher level
/// if you want to maintain state across navigation
class AppWithGroupsBloc extends StatelessWidget {
  const AppWithGroupsBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<GroupsBloc>()),
        // Add other blocs here
      ],
      child: MaterialApp(title: 'Smart Teacher', home: const HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفحة الرئيسية')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // GroupsBloc is already provided higher in the tree
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GroupsPage()),
            );
          },
          child: const Text('عرض المجموعات'),
        ),
      ),
    );
  }
}

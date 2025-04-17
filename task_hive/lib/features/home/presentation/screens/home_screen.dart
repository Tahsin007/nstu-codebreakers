import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/home_user_entity.dart';
import '../../../../core/di/di.dart';
import '../cubits/fetch_projects/fetch_projects_cubit.dart';
import '../cubits/fetch_projects/fetch_projects_state.dart';

class HomeScreen extends StatefulWidget {
  final HomePageUserEntity user;
  const HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fetchProjectCubit = getIt.get<FetchProjectsCubit>();
  @override
  void initState() {
    print('dbg  ${widget.user.toJson()}');
    fetchProjectCubit.fetchProjects(userId: widget.user.userId ?? 0);
    super.initState();
  }

  @override
  void dispose() {
    fetchProjectCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              SingleChildScrollView(
                child: Column(
                  children: [
                    BlocBuilder<FetchProjectsCubit, FetchProjectsState>(
                      bloc: fetchProjectCubit,
                      builder: (context, state) {
                        if (state is FetchProjectsLoading) {
                          return const CircularProgressIndicator(
                            color: Colors.blue,
                          );
                        } else if (state is FetchProjectsSuccess) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: state.projects.length,
                            itemBuilder: (context, index) {
                              final project = state.projects[index];
                              return ListTile(
                                title: Text(project?.name ?? 'No Name'),
                                subtitle: Text(
                                    project?.description ?? 'No Description'),
                              );
                            },
                          );
                        } else if (state is FetchProjectsFailed) {
                          return Text('Error: ${state.error}');
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

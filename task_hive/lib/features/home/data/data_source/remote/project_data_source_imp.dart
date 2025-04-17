import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/services/auth_service/auth_service.dart';
import 'project_data_source.dart';

class ProjectDataSourceImp implements ProjectDataSource {
  final SupabaseClient supabaseClient;
  final authClient = getIt<AuthService>().getAuthClient();
  ProjectDataSourceImp({SupabaseClient? supabaseClient})
      : supabaseClient =
            supabaseClient ?? getIt<AuthService>().getSupabaseClient();

  @override
  Future<void> addProject(Map<String, dynamic> project) {
    // TODO: implement addProject
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProject(String id) {
    // TODO: implement deleteProject
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, dynamic>>> fetchProject(int userId) async {
    try {
      final response = await supabaseClient
          .from('projects')
          .select()
          .eq('created_by', userId);
      return response;
    } catch (e) {
      throw Exception('Error retrieving project data: ${e.toString()}');
    }
  }

  @override
  Future<void> updateProject(Map<String, dynamic> project) {
    // TODO: implement updateProject
    throw UnimplementedError();
  }
}

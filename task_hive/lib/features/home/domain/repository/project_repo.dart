import 'package:dartz/dartz.dart';

import '../entities/project_entity.dart';

abstract class ProjectRepository {
  Future<Either<List<ProjectEntity?>, String>> fetchProject(int userId);
  Future<void> addProject(Map<String, dynamic> project);
  Future<void> deleteProject(String id);
  Future<void> updateProject(Map<String, dynamic> project);
}

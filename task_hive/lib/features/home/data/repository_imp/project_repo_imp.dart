import 'package:dartz/dartz.dart';

import '../data_source/remote/project_data_source.dart';
import '../models/project_model.dart';
import '../../domain/entities/project_entity.dart';
import '../../domain/repository/project_repo.dart';

class ProjectRepoImp implements ProjectRepository {
  final ProjectDataSource _projectDataSource;
  ProjectRepoImp(this._projectDataSource);

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
  Future<void> updateProject(Map<String, dynamic> project) {
    // TODO: implement updateProject
    throw UnimplementedError();
  }

  @override
  Future<Either<List<ProjectEntity?>, String>> fetchProject(int userId) async {
    try {
      final response = _projectDataSource.fetchProject(userId);
      final data = await response;
      final projectList =
          data.map((e) => ProjectModel.fromJson(e).toEntity()).toList();
      return Left(projectList);
    } catch (e) {
      return Right(e.toString());
    }
  }
}

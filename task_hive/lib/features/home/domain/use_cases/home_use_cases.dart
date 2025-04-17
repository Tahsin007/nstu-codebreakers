import 'package:dartz/dartz.dart';

import '../../../../core/base/use_case/base_use_case.dart';
import '../entities/project_entity.dart';
import '../repository/project_repo.dart';

class FetchProjectsUseCase
    extends BaseUseCase<int, List<ProjectEntity?>, String> {
  final ProjectRepository _projectRepository;
  FetchProjectsUseCase(this._projectRepository);

  @override
  Future<Either<List<ProjectEntity?>, String>> call(int input) async {
    return await _projectRepository.fetchProject(input);
  }
}

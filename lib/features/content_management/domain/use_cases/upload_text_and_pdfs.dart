import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

import '../../data/repositories/content_management_repositories_imp.dart';

class UploadTextAndPdfsUseCase {
  final ContentManagementRepositoriesImp _contentManagementRepositoriesImp;

  UploadTextAndPdfsUseCase(this._contentManagementRepositoriesImp);

  Future<void> call(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementRepositoriesImp.uploadTextAndPdfs(
          contentManagementEntity: contentManagementEntity);
}

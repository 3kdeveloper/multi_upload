import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

import '../../data/repositories/content_management_repositories_imp.dart';

class UploadTextUseCase {
  final ContentManagementRepositoriesImp _contentManagementRepositoriesImp;

  UploadTextUseCase(this._contentManagementRepositoriesImp);

  Future<void> call(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementRepositoriesImp.uploadText(
          contentManagementEntity: contentManagementEntity);
}

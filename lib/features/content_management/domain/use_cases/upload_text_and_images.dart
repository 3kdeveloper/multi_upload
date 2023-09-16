import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

import '../../data/repositories/content_management_repositories_imp.dart';

class UploadTextAndImagesUseCase {
  final ContentManagementRepositoriesImp _contentManagementRepositoriesImp;

  UploadTextAndImagesUseCase(this._contentManagementRepositoriesImp);

  Future<void> call(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementRepositoriesImp.uploadTextAndImages(
          contentManagementEntity: contentManagementEntity);
}

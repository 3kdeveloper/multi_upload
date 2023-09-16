import 'package:multi_upload_pro/features/content_management/data/data_sources/remote/content_management_service_firebase.dart';
import 'package:multi_upload_pro/features/content_management/data/models/content_management.dart';
import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

import '../../domain/repositories/content_management_repositories.dart';

class ContentManagementRepositoriesImp
    implements ContentManagementRepositories {
  final ContentManagementServiceFirebase _contentManagementServiceFirebase;

  ContentManagementRepositoriesImp(this._contentManagementServiceFirebase);

  @override
  Future<void> uploadText(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementServiceFirebase.uploadText(
          contentManagementModel:
              ContentManagementModel.fromEntity(contentManagementEntity));

  @override
  Future<void> uploadTextAndImages(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementServiceFirebase.uploadTextAndImages(
          contentManagementModel:
              ContentManagementModel.fromEntity(contentManagementEntity));

  @override
  Future<void> uploadImagesAndPdfs(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementServiceFirebase.uploadImagesAndPdfs(
          contentManagementModel:
              ContentManagementModel.fromEntity(contentManagementEntity));

  @override
  Future<void> uploadTextAndPdfs(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementServiceFirebase.uploadTextAndPdfs(
          contentManagementModel:
              ContentManagementModel.fromEntity(contentManagementEntity));

  @override
  Future<void> uploadTextImagesAndPdfs(
          {required ContentManagementEntity contentManagementEntity}) async =>
      await _contentManagementServiceFirebase.uploadTextImagesAndPdfs(
          contentManagementModel:
              ContentManagementModel.fromEntity(contentManagementEntity));

  @override
  Future<ContentManagementEntity> fetchData() async =>
      await _contentManagementServiceFirebase.fetchData();
}

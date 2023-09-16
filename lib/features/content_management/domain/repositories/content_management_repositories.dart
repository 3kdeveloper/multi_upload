import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

abstract class ContentManagementRepositories {
  Future<void> uploadText(
      {required ContentManagementEntity contentManagementEntity});

  Future<void> uploadTextAndImages(
      {required ContentManagementEntity contentManagementEntity});

  Future<void> uploadTextAndPdfs(
      {required ContentManagementEntity contentManagementEntity});

  Future<void> uploadTextImagesAndPdfs(
      {required ContentManagementEntity contentManagementEntity});

  Future<void> uploadImagesAndPdfs(
      {required ContentManagementEntity contentManagementEntity});

  Future<ContentManagementEntity> fetchData();
}

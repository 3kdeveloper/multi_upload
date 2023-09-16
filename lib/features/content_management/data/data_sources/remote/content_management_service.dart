import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

import '../../models/content_management.dart';

abstract class ContentManagementService {
  Future<void> uploadText(
      {required ContentManagementModel contentManagementModel});

  Future<void> uploadTextAndImages(
      {required ContentManagementModel contentManagementModel});

  Future<void> uploadTextAndPdfs(
      {required ContentManagementModel contentManagementModel});

  Future<void> uploadTextImagesAndPdfs(
      {required ContentManagementModel contentManagementModel});

  Future<void> uploadImagesAndPdfs(
      {required ContentManagementModel contentManagementModel});

  Future<ContentManagementEntity> fetchData();
}

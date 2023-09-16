import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';

import '../../../../../core/constants/export.dart';
import '../../models/content_management.dart';
import 'content_management_service.dart';

class ContentManagementServiceFirebase implements ContentManagementService {
  final _auth = sl.get<FirebaseAuth>();
  final _dataCollection =
      sl.get<FirebaseFirestore>().collection(Constants.dataCollection);
  final _storage = sl.get<FirebaseStorage>();

  @override
  Future<void> uploadText(
          {required ContentManagementModel contentManagementModel}) async =>
      await _uploadData(contentManagementModel);

  @override
  Future<void> uploadTextAndImages(
          {required ContentManagementModel contentManagementModel}) async =>
      await _uploadData(contentManagementModel);

  @override
  Future<void> uploadImagesAndPdfs(
          {required ContentManagementModel contentManagementModel}) async =>
      await _uploadData(contentManagementModel);

  @override
  Future<void> uploadTextAndPdfs(
          {required ContentManagementModel contentManagementModel}) async =>
      await _uploadData(contentManagementModel);

  @override
  Future<void> uploadTextImagesAndPdfs(
          {required ContentManagementModel contentManagementModel}) async =>
      await _uploadData(contentManagementModel);

  @override
  Future<ContentManagementEntity> fetchData() {
    // TODO: implement fetchData
    throw UnimplementedError();
  }

  Future<void> _uploadData(
      ContentManagementModel contentManagementModel) async {
    await _dataCollection
        .doc(_auth.currentUser?.uid ?? '')
        .collection(Constants.userUploadedDataCollection)
        .doc(contentManagementModel.sendTime)
        .set(contentManagementModel.toJson());
  }
}

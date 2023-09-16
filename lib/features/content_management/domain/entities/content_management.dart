import 'package:multi_upload_pro/core/constants/export.dart';

class ContentManagementEntity {
  final String? sendTime;
  final String? text;
  final List<String>? images;
  final List<String>? pdfs;
  final UploadDataType? uploadDataType;

  const ContentManagementEntity({
    this.sendTime,
    this.text,
    this.images,
    this.pdfs,
    this.uploadDataType,
  });
}

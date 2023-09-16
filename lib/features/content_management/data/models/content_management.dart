import '../../../../core/constants/export.dart';
import '../../domain/entities/content_management.dart';

part 'content_management.g.dart';

@JsonSerializable()
class ContentManagementModel extends ContentManagementEntity {
  const ContentManagementModel({
    String? sendTime,
    String? text,
    List<String>? images,
    List<String>? pdfs,
    UploadDataType? uploadDataType,
  }) : super(
            sendTime: sendTime,
            text: text,
            images: images,
            pdfs: pdfs,
            uploadDataType: uploadDataType);

  factory ContentManagementModel.fromJson(Map<String, dynamic> json) =>
      _$ContentManagementModelFromJson(json);

  Map<String, dynamic> toJson() => _$ContentManagementModelToJson(this);

  factory ContentManagementModel.fromEntity(
      ContentManagementEntity contentManagementEntity) {
    return ContentManagementModel(
      sendTime: contentManagementEntity.sendTime,
      text: contentManagementEntity.text,
      images: contentManagementEntity.images,
      pdfs: contentManagementEntity.pdfs,
      uploadDataType: contentManagementEntity.uploadDataType,
    );
  }
}

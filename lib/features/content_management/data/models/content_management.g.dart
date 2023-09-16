// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_management.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentManagementModel _$ContentManagementModelFromJson(
        Map<String, dynamic> json) =>
    ContentManagementModel(
      sendTime: json['sendTime'] as String?,
      text: json['text'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      pdfs: (json['pdfs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      uploadDataType:
          $enumDecodeNullable(_$UploadDataTypeEnumMap, json['uploadDataType']),
    );

Map<String, dynamic> _$ContentManagementModelToJson(
        ContentManagementModel instance) =>
    <String, dynamic>{
      'sendTime': instance.sendTime,
      'text': instance.text,
      'images': instance.images,
      'pdfs': instance.pdfs,
      'uploadDataType': _$UploadDataTypeEnumMap[instance.uploadDataType],
    };

const _$UploadDataTypeEnumMap = {
  UploadDataType.text: 'text',
  UploadDataType.textAndImages: 'textAndImages',
  UploadDataType.textAndPdfs: 'textAndPdfs',
  UploadDataType.textImagesAndPdfs: 'textImagesAndPdfs',
  UploadDataType.imagesAndPdfs: 'imagesAndPdfs',
};

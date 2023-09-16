part of 'content_management_bloc.dart';

@freezed
class ContentManagementEvent with _$ContentManagementEvent {
  const factory ContentManagementEvent.onUploadText(
      {@Default('') String text}) = OnUploadText;

  const factory ContentManagementEvent.onUploadTextAndImage(
      {@Default('') String text}) = OnUploadTextAndImage;

  const factory ContentManagementEvent.onUploadTextAndPdfs(
      {@Default('') String text}) = OnUploadTextAndPdfs;

  const factory ContentManagementEvent.onUploadImagesAndPdfs() =
      OnUploadImagesAndPdfs;

  const factory ContentManagementEvent.onUploadTextImagesAndPdfs(
      {@Default('') String text}) = OnUploadTextImagesAndPdfs;

  const factory ContentManagementEvent.onPickFiles({
    required MediaType mediaType,
    @Default(true) bool isPickImages,
    @Default(FileType.image) FileType fileType,
    @Default(<String>[]) List<String> allowedExtension,
  }) = OnPickFiles;

  const factory ContentManagementEvent.onUpdatePermissionStatus({
    @Default(true) bool? storagePermission,
    @Default(true) bool? cameraPermission,
  }) = OnUpdatePermissionStatus;
  const factory ContentManagementEvent.onPickPdfs() = OnPickPdfs;
}

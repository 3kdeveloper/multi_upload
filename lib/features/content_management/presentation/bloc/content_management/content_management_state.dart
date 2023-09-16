part of 'content_management_bloc.dart';

@freezed
class ContentManagementState with _$ContentManagementState {
  const factory ContentManagementState.onContentManagementState({
    @Default(InitialRequestStatus()) RequestStatus requestStatus,
    @Default(true) bool? storagePermission,
    @Default(true) bool? cameraPermission,
    @Default(<File>[]) List<File> pickedImages,
    @Default(<File>[]) List<File> pickedPdfs,
  }) = _ContentManagementState;
}

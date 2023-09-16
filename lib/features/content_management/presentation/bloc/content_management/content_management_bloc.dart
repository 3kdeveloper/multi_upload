import 'package:multi_upload_pro/features/content_management/domain/entities/content_management.dart';
import 'package:multi_upload_pro/features/content_management/domain/use_cases/upload_images_and_pdfs.dart';
import 'package:multi_upload_pro/features/content_management/domain/use_cases/upload_text.dart';
import 'package:multi_upload_pro/features/content_management/domain/use_cases/upload_text_and_images.dart';
import 'package:multi_upload_pro/features/content_management/domain/use_cases/upload_text_and_pdfs.dart';
import 'package:multi_upload_pro/features/content_management/domain/use_cases/upload_text_images_and_pdfs.dart';
import 'package:path/path.dart' as path;
import '../../../../../../core/constants/export.dart';

part 'content_management_event.dart';
part 'content_management_state.dart';
part 'content_management_bloc.freezed.dart';

class ContentManagementBloc
    extends Bloc<ContentManagementEvent, ContentManagementState> {
  ContentManagementBloc(
      this._uploadTextUseCase,
      this._uploadImagesAndPdfsUseCase,
      this._uploadTextAndImagesUseCase,
      this._uploadTextAndPdfsUseCase,
      this._uploadTextImagesAndPdfsUseCase)
      : super(const ContentManagementState.onContentManagementState()) {
    on<OnUploadText>(_uploadText);
    on<OnUploadTextAndImage>(_uploadTextAndImage);
    on<OnUploadTextAndPdfs>(_uploadTextAndPdfs);
    on<OnUploadImagesAndPdfs>(_uploadImagesAndPdfs);
    on<OnUploadTextImagesAndPdfs>(_uploadTextImagesAndPdfs);
    on<OnPickFiles>(_onPickFiles);
    on<OnUpdatePermissionStatus>(_onUpdatePermissionStatus);
  }

  final UploadTextUseCase _uploadTextUseCase;
  final UploadTextAndImagesUseCase _uploadTextAndImagesUseCase;
  final UploadTextAndPdfsUseCase _uploadTextAndPdfsUseCase;
  final UploadImagesAndPdfsUseCase _uploadImagesAndPdfsUseCase;
  final UploadTextImagesAndPdfsUseCase _uploadTextImagesAndPdfsUseCase;
  final _sentTime = DateTime.now().millisecondsSinceEpoch.toString();
  List<File> images = [];
  List<File> pdfs = [];
  List<String> imagesUrls = [];
  List<String> pdfsUrls = [];

  Future<void> _uploadText(
      OnUploadText event, Emitter<ContentManagementState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    await _uploadTextUseCase
        .call(
            contentManagementEntity: ContentManagementEntity(
      text: event.text,
      sendTime: _sentTime,
      uploadDataType: UploadDataType.text,
    ))
        .then((value) {
      logger.f('Success');
      emit(state.copyWith(requestStatus: const RequestStatusSuccess()));
    }).catchError((e) {
      logger.f('Exception: ${e.toString()}');
    });
  }

  Future<void> _uploadTextAndImage(
      OnUploadTextAndImage event, Emitter<ContentManagementState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    await generateUrlsForFirebase(images, 'images').then((value) async {
      imagesUrls = value.toList();
      await _uploadTextAndImagesUseCase
          .call(
              contentManagementEntity: ContentManagementEntity(
        text: event.text,
        images: imagesUrls,
        sendTime: _sentTime,
        uploadDataType: UploadDataType.textAndImages,
      ))
          .then((value) {
        logger.f('Success');
        emit(state.copyWith(requestStatus: const RequestStatusSuccess()));
      }).catchError((e) {
        logger.f('Exception: ${e.toString()}');
      });
    });
  }

  Future<void> _uploadTextAndPdfs(
      OnUploadTextAndPdfs event, Emitter<ContentManagementState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    await generateUrlsForFirebase(pdfs, 'Pdfs', isGenImagesUrls: false)
        .then((value) async {
      pdfsUrls = value.toList();
      await _uploadTextAndPdfsUseCase
          .call(
              contentManagementEntity: ContentManagementEntity(
        text: event.text,
        pdfs: pdfsUrls,
        sendTime: _sentTime,
        uploadDataType: UploadDataType.textAndPdfs,
      ))
          .then((value) {
        logger.f('Success');
        emit(state.copyWith(requestStatus: const RequestStatusSuccess()));
      }).catchError((e) {
        logger.f('Exception: ${e.toString()}');
      });
    });
  }

  Future<void> _uploadImagesAndPdfs(
      OnUploadImagesAndPdfs event, Emitter<ContentManagementState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    await generateUrlsForFirebase(images, 'images').then((value) async {
      imagesUrls = value.toList();
      await generateUrlsForFirebase(pdfs, 'Pdfs', isGenImagesUrls: false)
          .then((value) async {
        pdfsUrls = value.toList();
        await _uploadImagesAndPdfsUseCase
            .call(
                contentManagementEntity: ContentManagementEntity(
          images: imagesUrls,
          pdfs: pdfsUrls,
          sendTime: _sentTime,
          uploadDataType: UploadDataType.imagesAndPdfs,
        ))
            .then((value) {
          logger.f('Success');
          emit(state.copyWith(requestStatus: const RequestStatusSuccess()));
        }).catchError((e) {
          logger.f('Exception: ${e.toString()}');
        });
      });
    });
  }

  Future<void> _uploadTextImagesAndPdfs(OnUploadTextImagesAndPdfs event,
      Emitter<ContentManagementState> emit) async {
    emit(state.copyWith(requestStatus: const RequestStatusLoading()));
    await generateUrlsForFirebase(images, 'images').then((value) async {
      imagesUrls = value.toList();
      await generateUrlsForFirebase(pdfs, 'Pdfs', isGenImagesUrls: false)
          .then((value) async {
        pdfsUrls = value.toList();
        await _uploadTextImagesAndPdfsUseCase
            .call(
                contentManagementEntity: ContentManagementEntity(
          text: event.text,
          images: imagesUrls,
          pdfs: pdfsUrls,
          sendTime: _sentTime,
          uploadDataType: UploadDataType.textImagesAndPdfs,
        ))
            .then((value) {
          logger.f('Success');
          emit(state.copyWith(requestStatus: const RequestStatusSuccess()));
        }).catchError((e) {
          logger.f('Exception: ${e.toString()}');
        });
      });
    });
  }

  Future<void> _onPickFiles(
      OnPickFiles event, Emitter<ContentManagementState> emit) async {
    AndroidDeviceInfo? androidDeviceInfo;
    if (Platform.isAndroid) {
      androidDeviceInfo = await DeviceInfoPlugin().androidInfo;
    }
    PermissionStatus permissionStatus = await PermissionUtils.checkPermission(
        permission: event.mediaType == MediaType.gallery
            ? (androidDeviceInfo != null &&
                    androidDeviceInfo.version.sdkInt == 33)
                ? Permission.photos
                : Permission.storage
            : Permission.camera);
    if (permissionStatus.isGranted) {
      try {
        if (event.mediaType == MediaType.gallery) {
          FilePickerResult? result = await FilePicker.platform.pickFiles(
            type: event.fileType,
            allowedExtensions: event.allowedExtension,
            allowMultiple: true,
          );
          if (result != null) {
            List<File> pickedFiles =
                result.paths.map((path) => File(path ?? '')).toList();
            if (event.isPickImages) {
              images.addAll(pickedFiles);
              emit(state.copyWith(pickedImages: images.toList()));
            } else {
              pdfs.addAll(pickedFiles);
              emit(state.copyWith(pickedPdfs: pdfs.toList()));
            }
          }
        }
      } catch (e) {
        logger.f("Error picking images: $e");
      }
    } else if (permissionStatus.isPermanentlyDenied) {
      emit(state.copyWith(
          storagePermission:
              event.mediaType == MediaType.gallery ? false : null,
          cameraPermission:
              event.mediaType == MediaType.camera ? false : null));
    }
  }

  FutureOr<void> _onUpdatePermissionStatus(
      OnUpdatePermissionStatus event, Emitter<ContentManagementState> emit) {
    emit(state.copyWith(
        storagePermission: event.storagePermission,
        cameraPermission: event.cameraPermission));
  }

  Future<List<String>> generateUrlsForFirebase(
      List<File> pickedFiles, String folderName,
      {bool isGenImagesUrls = true}) async {
    final storage = sl.get<FirebaseStorage>();
    for (int i = 0; i < pickedFiles.length; i++) {
      final File imageFile = pickedFiles[i];
      final String fileName = path.basename(imageFile.path);
      final Reference ref = storage.ref().child('$folderName/$fileName');
      try {
        await ref.putFile(imageFile);
        final String fileUrl = await ref.getDownloadURL();

        isGenImagesUrls ? imagesUrls.add(fileUrl) : pdfsUrls.add(fileUrl);
      } catch (e) {
        logger.f('Error uploading image $i: $e');
      }
    }
    return isGenImagesUrls ? imagesUrls : pdfsUrls;
  }
}

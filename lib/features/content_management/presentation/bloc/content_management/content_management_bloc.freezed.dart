// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentManagementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentManagementEventCopyWith<$Res> {
  factory $ContentManagementEventCopyWith(ContentManagementEvent value,
          $Res Function(ContentManagementEvent) then) =
      _$ContentManagementEventCopyWithImpl<$Res, ContentManagementEvent>;
}

/// @nodoc
class _$ContentManagementEventCopyWithImpl<$Res,
        $Val extends ContentManagementEvent>
    implements $ContentManagementEventCopyWith<$Res> {
  _$ContentManagementEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnUploadTextCopyWith<$Res> {
  factory _$$OnUploadTextCopyWith(
          _$OnUploadText value, $Res Function(_$OnUploadText) then) =
      __$$OnUploadTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnUploadTextCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res, _$OnUploadText>
    implements _$$OnUploadTextCopyWith<$Res> {
  __$$OnUploadTextCopyWithImpl(
      _$OnUploadText _value, $Res Function(_$OnUploadText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnUploadText(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnUploadText implements OnUploadText {
  const _$OnUploadText({this.text = ''});

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'ContentManagementEvent.onUploadText(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUploadText &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUploadTextCopyWith<_$OnUploadText> get copyWith =>
      __$$OnUploadTextCopyWithImpl<_$OnUploadText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onUploadText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onUploadText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadText != null) {
      return onUploadText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onUploadText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onUploadText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadText != null) {
      return onUploadText(this);
    }
    return orElse();
  }
}

abstract class OnUploadText implements ContentManagementEvent {
  const factory OnUploadText({final String text}) = _$OnUploadText;

  String get text;
  @JsonKey(ignore: true)
  _$$OnUploadTextCopyWith<_$OnUploadText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUploadTextAndImageCopyWith<$Res> {
  factory _$$OnUploadTextAndImageCopyWith(_$OnUploadTextAndImage value,
          $Res Function(_$OnUploadTextAndImage) then) =
      __$$OnUploadTextAndImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnUploadTextAndImageCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res, _$OnUploadTextAndImage>
    implements _$$OnUploadTextAndImageCopyWith<$Res> {
  __$$OnUploadTextAndImageCopyWithImpl(_$OnUploadTextAndImage _value,
      $Res Function(_$OnUploadTextAndImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnUploadTextAndImage(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnUploadTextAndImage implements OnUploadTextAndImage {
  const _$OnUploadTextAndImage({this.text = ''});

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'ContentManagementEvent.onUploadTextAndImage(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUploadTextAndImage &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUploadTextAndImageCopyWith<_$OnUploadTextAndImage> get copyWith =>
      __$$OnUploadTextAndImageCopyWithImpl<_$OnUploadTextAndImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onUploadTextAndImage(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onUploadTextAndImage?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadTextAndImage != null) {
      return onUploadTextAndImage(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onUploadTextAndImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onUploadTextAndImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadTextAndImage != null) {
      return onUploadTextAndImage(this);
    }
    return orElse();
  }
}

abstract class OnUploadTextAndImage implements ContentManagementEvent {
  const factory OnUploadTextAndImage({final String text}) =
      _$OnUploadTextAndImage;

  String get text;
  @JsonKey(ignore: true)
  _$$OnUploadTextAndImageCopyWith<_$OnUploadTextAndImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUploadTextAndPdfsCopyWith<$Res> {
  factory _$$OnUploadTextAndPdfsCopyWith(_$OnUploadTextAndPdfs value,
          $Res Function(_$OnUploadTextAndPdfs) then) =
      __$$OnUploadTextAndPdfsCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnUploadTextAndPdfsCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res, _$OnUploadTextAndPdfs>
    implements _$$OnUploadTextAndPdfsCopyWith<$Res> {
  __$$OnUploadTextAndPdfsCopyWithImpl(
      _$OnUploadTextAndPdfs _value, $Res Function(_$OnUploadTextAndPdfs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnUploadTextAndPdfs(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnUploadTextAndPdfs implements OnUploadTextAndPdfs {
  const _$OnUploadTextAndPdfs({this.text = ''});

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'ContentManagementEvent.onUploadTextAndPdfs(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUploadTextAndPdfs &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUploadTextAndPdfsCopyWith<_$OnUploadTextAndPdfs> get copyWith =>
      __$$OnUploadTextAndPdfsCopyWithImpl<_$OnUploadTextAndPdfs>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onUploadTextAndPdfs(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onUploadTextAndPdfs?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadTextAndPdfs != null) {
      return onUploadTextAndPdfs(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onUploadTextAndPdfs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onUploadTextAndPdfs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadTextAndPdfs != null) {
      return onUploadTextAndPdfs(this);
    }
    return orElse();
  }
}

abstract class OnUploadTextAndPdfs implements ContentManagementEvent {
  const factory OnUploadTextAndPdfs({final String text}) =
      _$OnUploadTextAndPdfs;

  String get text;
  @JsonKey(ignore: true)
  _$$OnUploadTextAndPdfsCopyWith<_$OnUploadTextAndPdfs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUploadImagesAndPdfsCopyWith<$Res> {
  factory _$$OnUploadImagesAndPdfsCopyWith(_$OnUploadImagesAndPdfs value,
          $Res Function(_$OnUploadImagesAndPdfs) then) =
      __$$OnUploadImagesAndPdfsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnUploadImagesAndPdfsCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res, _$OnUploadImagesAndPdfs>
    implements _$$OnUploadImagesAndPdfsCopyWith<$Res> {
  __$$OnUploadImagesAndPdfsCopyWithImpl(_$OnUploadImagesAndPdfs _value,
      $Res Function(_$OnUploadImagesAndPdfs) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnUploadImagesAndPdfs implements OnUploadImagesAndPdfs {
  const _$OnUploadImagesAndPdfs();

  @override
  String toString() {
    return 'ContentManagementEvent.onUploadImagesAndPdfs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnUploadImagesAndPdfs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onUploadImagesAndPdfs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onUploadImagesAndPdfs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadImagesAndPdfs != null) {
      return onUploadImagesAndPdfs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onUploadImagesAndPdfs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onUploadImagesAndPdfs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadImagesAndPdfs != null) {
      return onUploadImagesAndPdfs(this);
    }
    return orElse();
  }
}

abstract class OnUploadImagesAndPdfs implements ContentManagementEvent {
  const factory OnUploadImagesAndPdfs() = _$OnUploadImagesAndPdfs;
}

/// @nodoc
abstract class _$$OnUploadTextImagesAndPdfsCopyWith<$Res> {
  factory _$$OnUploadTextImagesAndPdfsCopyWith(
          _$OnUploadTextImagesAndPdfs value,
          $Res Function(_$OnUploadTextImagesAndPdfs) then) =
      __$$OnUploadTextImagesAndPdfsCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnUploadTextImagesAndPdfsCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res,
        _$OnUploadTextImagesAndPdfs>
    implements _$$OnUploadTextImagesAndPdfsCopyWith<$Res> {
  __$$OnUploadTextImagesAndPdfsCopyWithImpl(_$OnUploadTextImagesAndPdfs _value,
      $Res Function(_$OnUploadTextImagesAndPdfs) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnUploadTextImagesAndPdfs(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnUploadTextImagesAndPdfs implements OnUploadTextImagesAndPdfs {
  const _$OnUploadTextImagesAndPdfs({this.text = ''});

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'ContentManagementEvent.onUploadTextImagesAndPdfs(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUploadTextImagesAndPdfs &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUploadTextImagesAndPdfsCopyWith<_$OnUploadTextImagesAndPdfs>
      get copyWith => __$$OnUploadTextImagesAndPdfsCopyWithImpl<
          _$OnUploadTextImagesAndPdfs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onUploadTextImagesAndPdfs(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onUploadTextImagesAndPdfs?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadTextImagesAndPdfs != null) {
      return onUploadTextImagesAndPdfs(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onUploadTextImagesAndPdfs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onUploadTextImagesAndPdfs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUploadTextImagesAndPdfs != null) {
      return onUploadTextImagesAndPdfs(this);
    }
    return orElse();
  }
}

abstract class OnUploadTextImagesAndPdfs implements ContentManagementEvent {
  const factory OnUploadTextImagesAndPdfs({final String text}) =
      _$OnUploadTextImagesAndPdfs;

  String get text;
  @JsonKey(ignore: true)
  _$$OnUploadTextImagesAndPdfsCopyWith<_$OnUploadTextImagesAndPdfs>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPickFilesCopyWith<$Res> {
  factory _$$OnPickFilesCopyWith(
          _$OnPickFiles value, $Res Function(_$OnPickFiles) then) =
      __$$OnPickFilesCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {MediaType mediaType,
      bool isPickImages,
      FileType fileType,
      List<String> allowedExtension});
}

/// @nodoc
class __$$OnPickFilesCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res, _$OnPickFiles>
    implements _$$OnPickFilesCopyWith<$Res> {
  __$$OnPickFilesCopyWithImpl(
      _$OnPickFiles _value, $Res Function(_$OnPickFiles) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = null,
    Object? isPickImages = null,
    Object? fileType = null,
    Object? allowedExtension = null,
  }) {
    return _then(_$OnPickFiles(
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as MediaType,
      isPickImages: null == isPickImages
          ? _value.isPickImages
          : isPickImages // ignore: cast_nullable_to_non_nullable
              as bool,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
      allowedExtension: null == allowedExtension
          ? _value._allowedExtension
          : allowedExtension // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$OnPickFiles implements OnPickFiles {
  const _$OnPickFiles(
      {required this.mediaType,
      this.isPickImages = true,
      this.fileType = FileType.image,
      final List<String> allowedExtension = const <String>[]})
      : _allowedExtension = allowedExtension;

  @override
  final MediaType mediaType;
  @override
  @JsonKey()
  final bool isPickImages;
  @override
  @JsonKey()
  final FileType fileType;
  final List<String> _allowedExtension;
  @override
  @JsonKey()
  List<String> get allowedExtension {
    if (_allowedExtension is EqualUnmodifiableListView)
      return _allowedExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allowedExtension);
  }

  @override
  String toString() {
    return 'ContentManagementEvent.onPickFiles(mediaType: $mediaType, isPickImages: $isPickImages, fileType: $fileType, allowedExtension: $allowedExtension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPickFiles &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.isPickImages, isPickImages) ||
                other.isPickImages == isPickImages) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            const DeepCollectionEquality()
                .equals(other._allowedExtension, _allowedExtension));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mediaType, isPickImages,
      fileType, const DeepCollectionEquality().hash(_allowedExtension));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPickFilesCopyWith<_$OnPickFiles> get copyWith =>
      __$$OnPickFilesCopyWithImpl<_$OnPickFiles>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onPickFiles(mediaType, isPickImages, fileType, allowedExtension);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onPickFiles?.call(
        mediaType, isPickImages, fileType, allowedExtension);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onPickFiles != null) {
      return onPickFiles(mediaType, isPickImages, fileType, allowedExtension);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onPickFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onPickFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onPickFiles != null) {
      return onPickFiles(this);
    }
    return orElse();
  }
}

abstract class OnPickFiles implements ContentManagementEvent {
  const factory OnPickFiles(
      {required final MediaType mediaType,
      final bool isPickImages,
      final FileType fileType,
      final List<String> allowedExtension}) = _$OnPickFiles;

  MediaType get mediaType;
  bool get isPickImages;
  FileType get fileType;
  List<String> get allowedExtension;
  @JsonKey(ignore: true)
  _$$OnPickFilesCopyWith<_$OnPickFiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnUpdatePermissionStatusCopyWith<$Res> {
  factory _$$OnUpdatePermissionStatusCopyWith(_$OnUpdatePermissionStatus value,
          $Res Function(_$OnUpdatePermissionStatus) then) =
      __$$OnUpdatePermissionStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? storagePermission, bool? cameraPermission});
}

/// @nodoc
class __$$OnUpdatePermissionStatusCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res,
        _$OnUpdatePermissionStatus>
    implements _$$OnUpdatePermissionStatusCopyWith<$Res> {
  __$$OnUpdatePermissionStatusCopyWithImpl(_$OnUpdatePermissionStatus _value,
      $Res Function(_$OnUpdatePermissionStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storagePermission = freezed,
    Object? cameraPermission = freezed,
  }) {
    return _then(_$OnUpdatePermissionStatus(
      storagePermission: freezed == storagePermission
          ? _value.storagePermission
          : storagePermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      cameraPermission: freezed == cameraPermission
          ? _value.cameraPermission
          : cameraPermission // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$OnUpdatePermissionStatus implements OnUpdatePermissionStatus {
  const _$OnUpdatePermissionStatus(
      {this.storagePermission = true, this.cameraPermission = true});

  @override
  @JsonKey()
  final bool? storagePermission;
  @override
  @JsonKey()
  final bool? cameraPermission;

  @override
  String toString() {
    return 'ContentManagementEvent.onUpdatePermissionStatus(storagePermission: $storagePermission, cameraPermission: $cameraPermission)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnUpdatePermissionStatus &&
            (identical(other.storagePermission, storagePermission) ||
                other.storagePermission == storagePermission) &&
            (identical(other.cameraPermission, cameraPermission) ||
                other.cameraPermission == cameraPermission));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, storagePermission, cameraPermission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnUpdatePermissionStatusCopyWith<_$OnUpdatePermissionStatus>
      get copyWith =>
          __$$OnUpdatePermissionStatusCopyWithImpl<_$OnUpdatePermissionStatus>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onUpdatePermissionStatus(storagePermission, cameraPermission);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onUpdatePermissionStatus?.call(storagePermission, cameraPermission);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUpdatePermissionStatus != null) {
      return onUpdatePermissionStatus(storagePermission, cameraPermission);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onUpdatePermissionStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onUpdatePermissionStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onUpdatePermissionStatus != null) {
      return onUpdatePermissionStatus(this);
    }
    return orElse();
  }
}

abstract class OnUpdatePermissionStatus implements ContentManagementEvent {
  const factory OnUpdatePermissionStatus(
      {final bool? storagePermission,
      final bool? cameraPermission}) = _$OnUpdatePermissionStatus;

  bool? get storagePermission;
  bool? get cameraPermission;
  @JsonKey(ignore: true)
  _$$OnUpdatePermissionStatusCopyWith<_$OnUpdatePermissionStatus>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPickPdfsCopyWith<$Res> {
  factory _$$OnPickPdfsCopyWith(
          _$OnPickPdfs value, $Res Function(_$OnPickPdfs) then) =
      __$$OnPickPdfsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnPickPdfsCopyWithImpl<$Res>
    extends _$ContentManagementEventCopyWithImpl<$Res, _$OnPickPdfs>
    implements _$$OnPickPdfsCopyWith<$Res> {
  __$$OnPickPdfsCopyWithImpl(
      _$OnPickPdfs _value, $Res Function(_$OnPickPdfs) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnPickPdfs implements OnPickPdfs {
  const _$OnPickPdfs();

  @override
  String toString() {
    return 'ContentManagementEvent.onPickPdfs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnPickPdfs);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) onUploadText,
    required TResult Function(String text) onUploadTextAndImage,
    required TResult Function(String text) onUploadTextAndPdfs,
    required TResult Function() onUploadImagesAndPdfs,
    required TResult Function(String text) onUploadTextImagesAndPdfs,
    required TResult Function(MediaType mediaType, bool isPickImages,
            FileType fileType, List<String> allowedExtension)
        onPickFiles,
    required TResult Function(bool? storagePermission, bool? cameraPermission)
        onUpdatePermissionStatus,
    required TResult Function() onPickPdfs,
  }) {
    return onPickPdfs();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? onUploadText,
    TResult? Function(String text)? onUploadTextAndImage,
    TResult? Function(String text)? onUploadTextAndPdfs,
    TResult? Function()? onUploadImagesAndPdfs,
    TResult? Function(String text)? onUploadTextImagesAndPdfs,
    TResult? Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult? Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult? Function()? onPickPdfs,
  }) {
    return onPickPdfs?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? onUploadText,
    TResult Function(String text)? onUploadTextAndImage,
    TResult Function(String text)? onUploadTextAndPdfs,
    TResult Function()? onUploadImagesAndPdfs,
    TResult Function(String text)? onUploadTextImagesAndPdfs,
    TResult Function(MediaType mediaType, bool isPickImages, FileType fileType,
            List<String> allowedExtension)?
        onPickFiles,
    TResult Function(bool? storagePermission, bool? cameraPermission)?
        onUpdatePermissionStatus,
    TResult Function()? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onPickPdfs != null) {
      return onPickPdfs();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnUploadText value) onUploadText,
    required TResult Function(OnUploadTextAndImage value) onUploadTextAndImage,
    required TResult Function(OnUploadTextAndPdfs value) onUploadTextAndPdfs,
    required TResult Function(OnUploadImagesAndPdfs value)
        onUploadImagesAndPdfs,
    required TResult Function(OnUploadTextImagesAndPdfs value)
        onUploadTextImagesAndPdfs,
    required TResult Function(OnPickFiles value) onPickFiles,
    required TResult Function(OnUpdatePermissionStatus value)
        onUpdatePermissionStatus,
    required TResult Function(OnPickPdfs value) onPickPdfs,
  }) {
    return onPickPdfs(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnUploadText value)? onUploadText,
    TResult? Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult? Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult? Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult? Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult? Function(OnPickFiles value)? onPickFiles,
    TResult? Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult? Function(OnPickPdfs value)? onPickPdfs,
  }) {
    return onPickPdfs?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnUploadText value)? onUploadText,
    TResult Function(OnUploadTextAndImage value)? onUploadTextAndImage,
    TResult Function(OnUploadTextAndPdfs value)? onUploadTextAndPdfs,
    TResult Function(OnUploadImagesAndPdfs value)? onUploadImagesAndPdfs,
    TResult Function(OnUploadTextImagesAndPdfs value)?
        onUploadTextImagesAndPdfs,
    TResult Function(OnPickFiles value)? onPickFiles,
    TResult Function(OnUpdatePermissionStatus value)? onUpdatePermissionStatus,
    TResult Function(OnPickPdfs value)? onPickPdfs,
    required TResult orElse(),
  }) {
    if (onPickPdfs != null) {
      return onPickPdfs(this);
    }
    return orElse();
  }
}

abstract class OnPickPdfs implements ContentManagementEvent {
  const factory OnPickPdfs() = _$OnPickPdfs;
}

/// @nodoc
mixin _$ContentManagementState {
  RequestStatus<dynamic> get requestStatus =>
      throw _privateConstructorUsedError;
  bool? get storagePermission => throw _privateConstructorUsedError;
  bool? get cameraPermission => throw _privateConstructorUsedError;
  List<File> get pickedImages => throw _privateConstructorUsedError;
  List<File> get pickedPdfs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus<dynamic> requestStatus,
            bool? storagePermission,
            bool? cameraPermission,
            List<File> pickedImages,
            List<File> pickedPdfs)
        onContentManagementState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestStatus<dynamic> requestStatus,
            bool? storagePermission,
            bool? cameraPermission,
            List<File> pickedImages,
            List<File> pickedPdfs)?
        onContentManagementState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestStatus<dynamic> requestStatus,
            bool? storagePermission,
            bool? cameraPermission,
            List<File> pickedImages,
            List<File> pickedPdfs)?
        onContentManagementState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentManagementState value)
        onContentManagementState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentManagementState value)? onContentManagementState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentManagementState value)? onContentManagementState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentManagementStateCopyWith<ContentManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentManagementStateCopyWith<$Res> {
  factory $ContentManagementStateCopyWith(ContentManagementState value,
          $Res Function(ContentManagementState) then) =
      _$ContentManagementStateCopyWithImpl<$Res, ContentManagementState>;
  @useResult
  $Res call(
      {RequestStatus<dynamic> requestStatus,
      bool? storagePermission,
      bool? cameraPermission,
      List<File> pickedImages,
      List<File> pickedPdfs});
}

/// @nodoc
class _$ContentManagementStateCopyWithImpl<$Res,
        $Val extends ContentManagementState>
    implements $ContentManagementStateCopyWith<$Res> {
  _$ContentManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
    Object? storagePermission = freezed,
    Object? cameraPermission = freezed,
    Object? pickedImages = null,
    Object? pickedPdfs = null,
  }) {
    return _then(_value.copyWith(
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
      storagePermission: freezed == storagePermission
          ? _value.storagePermission
          : storagePermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      cameraPermission: freezed == cameraPermission
          ? _value.cameraPermission
          : cameraPermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      pickedImages: null == pickedImages
          ? _value.pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as List<File>,
      pickedPdfs: null == pickedPdfs
          ? _value.pickedPdfs
          : pickedPdfs // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentManagementStateCopyWith<$Res>
    implements $ContentManagementStateCopyWith<$Res> {
  factory _$$_ContentManagementStateCopyWith(_$_ContentManagementState value,
          $Res Function(_$_ContentManagementState) then) =
      __$$_ContentManagementStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequestStatus<dynamic> requestStatus,
      bool? storagePermission,
      bool? cameraPermission,
      List<File> pickedImages,
      List<File> pickedPdfs});
}

/// @nodoc
class __$$_ContentManagementStateCopyWithImpl<$Res>
    extends _$ContentManagementStateCopyWithImpl<$Res,
        _$_ContentManagementState>
    implements _$$_ContentManagementStateCopyWith<$Res> {
  __$$_ContentManagementStateCopyWithImpl(_$_ContentManagementState _value,
      $Res Function(_$_ContentManagementState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
    Object? storagePermission = freezed,
    Object? cameraPermission = freezed,
    Object? pickedImages = null,
    Object? pickedPdfs = null,
  }) {
    return _then(_$_ContentManagementState(
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
      storagePermission: freezed == storagePermission
          ? _value.storagePermission
          : storagePermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      cameraPermission: freezed == cameraPermission
          ? _value.cameraPermission
          : cameraPermission // ignore: cast_nullable_to_non_nullable
              as bool?,
      pickedImages: null == pickedImages
          ? _value._pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as List<File>,
      pickedPdfs: null == pickedPdfs
          ? _value._pickedPdfs
          : pickedPdfs // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$_ContentManagementState implements _ContentManagementState {
  const _$_ContentManagementState(
      {this.requestStatus = const InitialRequestStatus(),
      this.storagePermission = true,
      this.cameraPermission = true,
      final List<File> pickedImages = const <File>[],
      final List<File> pickedPdfs = const <File>[]})
      : _pickedImages = pickedImages,
        _pickedPdfs = pickedPdfs;

  @override
  @JsonKey()
  final RequestStatus<dynamic> requestStatus;
  @override
  @JsonKey()
  final bool? storagePermission;
  @override
  @JsonKey()
  final bool? cameraPermission;
  final List<File> _pickedImages;
  @override
  @JsonKey()
  List<File> get pickedImages {
    if (_pickedImages is EqualUnmodifiableListView) return _pickedImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pickedImages);
  }

  final List<File> _pickedPdfs;
  @override
  @JsonKey()
  List<File> get pickedPdfs {
    if (_pickedPdfs is EqualUnmodifiableListView) return _pickedPdfs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pickedPdfs);
  }

  @override
  String toString() {
    return 'ContentManagementState.onContentManagementState(requestStatus: $requestStatus, storagePermission: $storagePermission, cameraPermission: $cameraPermission, pickedImages: $pickedImages, pickedPdfs: $pickedPdfs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentManagementState &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus) &&
            (identical(other.storagePermission, storagePermission) ||
                other.storagePermission == storagePermission) &&
            (identical(other.cameraPermission, cameraPermission) ||
                other.cameraPermission == cameraPermission) &&
            const DeepCollectionEquality()
                .equals(other._pickedImages, _pickedImages) &&
            const DeepCollectionEquality()
                .equals(other._pickedPdfs, _pickedPdfs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      requestStatus,
      storagePermission,
      cameraPermission,
      const DeepCollectionEquality().hash(_pickedImages),
      const DeepCollectionEquality().hash(_pickedPdfs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentManagementStateCopyWith<_$_ContentManagementState> get copyWith =>
      __$$_ContentManagementStateCopyWithImpl<_$_ContentManagementState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RequestStatus<dynamic> requestStatus,
            bool? storagePermission,
            bool? cameraPermission,
            List<File> pickedImages,
            List<File> pickedPdfs)
        onContentManagementState,
  }) {
    return onContentManagementState(requestStatus, storagePermission,
        cameraPermission, pickedImages, pickedPdfs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RequestStatus<dynamic> requestStatus,
            bool? storagePermission,
            bool? cameraPermission,
            List<File> pickedImages,
            List<File> pickedPdfs)?
        onContentManagementState,
  }) {
    return onContentManagementState?.call(requestStatus, storagePermission,
        cameraPermission, pickedImages, pickedPdfs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RequestStatus<dynamic> requestStatus,
            bool? storagePermission,
            bool? cameraPermission,
            List<File> pickedImages,
            List<File> pickedPdfs)?
        onContentManagementState,
    required TResult orElse(),
  }) {
    if (onContentManagementState != null) {
      return onContentManagementState(requestStatus, storagePermission,
          cameraPermission, pickedImages, pickedPdfs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentManagementState value)
        onContentManagementState,
  }) {
    return onContentManagementState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentManagementState value)? onContentManagementState,
  }) {
    return onContentManagementState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentManagementState value)? onContentManagementState,
    required TResult orElse(),
  }) {
    if (onContentManagementState != null) {
      return onContentManagementState(this);
    }
    return orElse();
  }
}

abstract class _ContentManagementState implements ContentManagementState {
  const factory _ContentManagementState(
      {final RequestStatus<dynamic> requestStatus,
      final bool? storagePermission,
      final bool? cameraPermission,
      final List<File> pickedImages,
      final List<File> pickedPdfs}) = _$_ContentManagementState;

  @override
  RequestStatus<dynamic> get requestStatus;
  @override
  bool? get storagePermission;
  @override
  bool? get cameraPermission;
  @override
  List<File> get pickedImages;
  @override
  List<File> get pickedPdfs;
  @override
  @JsonKey(ignore: true)
  _$$_ContentManagementStateCopyWith<_$_ContentManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

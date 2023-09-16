// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFetchData value) onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnFetchData value)? onFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFetchData value)? onFetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnFetchDataCopyWith<$Res> {
  factory _$$OnFetchDataCopyWith(
          _$OnFetchData value, $Res Function(_$OnFetchData) then) =
      __$$OnFetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnFetchDataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnFetchData>
    implements _$$OnFetchDataCopyWith<$Res> {
  __$$OnFetchDataCopyWithImpl(
      _$OnFetchData _value, $Res Function(_$OnFetchData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnFetchData implements OnFetchData {
  const _$OnFetchData();

  @override
  String toString() {
    return 'HomeEvent.onFetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnFetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onFetchData,
  }) {
    return onFetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onFetchData,
  }) {
    return onFetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onFetchData,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnFetchData value) onFetchData,
  }) {
    return onFetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnFetchData value)? onFetchData,
  }) {
    return onFetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnFetchData value)? onFetchData,
    required TResult orElse(),
  }) {
    if (onFetchData != null) {
      return onFetchData(this);
    }
    return orElse();
  }
}

abstract class OnFetchData implements HomeEvent {
  const factory OnFetchData() = _$OnFetchData;
}

/// @nodoc
mixin _$HomeState {
  RequestStatus<dynamic> get requestStatus =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus<dynamic> requestStatus) onHomeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus<dynamic> requestStatus)? onHomeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus<dynamic> requestStatus)? onHomeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) onHomeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? onHomeState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? onHomeState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({RequestStatus<dynamic> requestStatus});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
  }) {
    return _then(_value.copyWith(
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestStatus<dynamic> requestStatus});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestStatus = null,
  }) {
    return _then(_$_HomeState(
      requestStatus: null == requestStatus
          ? _value.requestStatus
          : requestStatus // ignore: cast_nullable_to_non_nullable
              as RequestStatus<dynamic>,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.requestStatus = const InitialRequestStatus()});

  @override
  @JsonKey()
  final RequestStatus<dynamic> requestStatus;

  @override
  String toString() {
    return 'HomeState.onHomeState(requestStatus: $requestStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.requestStatus, requestStatus) ||
                other.requestStatus == requestStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RequestStatus<dynamic> requestStatus) onHomeState,
  }) {
    return onHomeState(requestStatus);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RequestStatus<dynamic> requestStatus)? onHomeState,
  }) {
    return onHomeState?.call(requestStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RequestStatus<dynamic> requestStatus)? onHomeState,
    required TResult orElse(),
  }) {
    if (onHomeState != null) {
      return onHomeState(requestStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeState value) onHomeState,
  }) {
    return onHomeState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeState value)? onHomeState,
  }) {
    return onHomeState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeState value)? onHomeState,
    required TResult orElse(),
  }) {
    if (onHomeState != null) {
      return onHomeState(this);
    }
    return orElse();
  }
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({final RequestStatus<dynamic> requestStatus}) =
      _$_HomeState;

  @override
  RequestStatus<dynamic> get requestStatus;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

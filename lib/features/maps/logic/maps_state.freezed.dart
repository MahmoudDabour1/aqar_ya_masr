// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maps_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MapsResponseModel mapsResponseModel) success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MapsResponseModel mapsResponseModel)? success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MapsResponseModel mapsResponseModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapsInitial<T> value) initial,
    required TResult Function(MapsLoading<T> value) loading,
    required TResult Function(MapsSuccess<T> value) success,
    required TResult Function(MapsError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapsInitial<T> value)? initial,
    TResult? Function(MapsLoading<T> value)? loading,
    TResult? Function(MapsSuccess<T> value)? success,
    TResult? Function(MapsError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapsInitial<T> value)? initial,
    TResult Function(MapsLoading<T> value)? loading,
    TResult Function(MapsSuccess<T> value)? success,
    TResult Function(MapsError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapsStateCopyWith<T, $Res> {
  factory $MapsStateCopyWith(
          MapsState<T> value, $Res Function(MapsState<T>) then) =
      _$MapsStateCopyWithImpl<T, $Res, MapsState<T>>;
}

/// @nodoc
class _$MapsStateCopyWithImpl<T, $Res, $Val extends MapsState<T>>
    implements $MapsStateCopyWith<T, $Res> {
  _$MapsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MapsInitialImplCopyWith<T, $Res> {
  factory _$$MapsInitialImplCopyWith(_$MapsInitialImpl<T> value,
          $Res Function(_$MapsInitialImpl<T>) then) =
      __$$MapsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MapsInitialImplCopyWithImpl<T, $Res>
    extends _$MapsStateCopyWithImpl<T, $Res, _$MapsInitialImpl<T>>
    implements _$$MapsInitialImplCopyWith<T, $Res> {
  __$$MapsInitialImplCopyWithImpl(
      _$MapsInitialImpl<T> _value, $Res Function(_$MapsInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MapsInitialImpl<T> implements MapsInitial<T> {
  const _$MapsInitialImpl();

  @override
  String toString() {
    return 'MapsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MapsResponseModel mapsResponseModel) success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MapsResponseModel mapsResponseModel)? success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MapsResponseModel mapsResponseModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapsInitial<T> value) initial,
    required TResult Function(MapsLoading<T> value) loading,
    required TResult Function(MapsSuccess<T> value) success,
    required TResult Function(MapsError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapsInitial<T> value)? initial,
    TResult? Function(MapsLoading<T> value)? loading,
    TResult? Function(MapsSuccess<T> value)? success,
    TResult? Function(MapsError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapsInitial<T> value)? initial,
    TResult Function(MapsLoading<T> value)? loading,
    TResult Function(MapsSuccess<T> value)? success,
    TResult Function(MapsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MapsInitial<T> implements MapsState<T> {
  const factory MapsInitial() = _$MapsInitialImpl<T>;
}

/// @nodoc
abstract class _$$MapsLoadingImplCopyWith<T, $Res> {
  factory _$$MapsLoadingImplCopyWith(_$MapsLoadingImpl<T> value,
          $Res Function(_$MapsLoadingImpl<T>) then) =
      __$$MapsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MapsLoadingImplCopyWithImpl<T, $Res>
    extends _$MapsStateCopyWithImpl<T, $Res, _$MapsLoadingImpl<T>>
    implements _$$MapsLoadingImplCopyWith<T, $Res> {
  __$$MapsLoadingImplCopyWithImpl(
      _$MapsLoadingImpl<T> _value, $Res Function(_$MapsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MapsLoadingImpl<T> implements MapsLoading<T> {
  const _$MapsLoadingImpl();

  @override
  String toString() {
    return 'MapsState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MapsResponseModel mapsResponseModel) success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MapsResponseModel mapsResponseModel)? success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MapsResponseModel mapsResponseModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapsInitial<T> value) initial,
    required TResult Function(MapsLoading<T> value) loading,
    required TResult Function(MapsSuccess<T> value) success,
    required TResult Function(MapsError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapsInitial<T> value)? initial,
    TResult? Function(MapsLoading<T> value)? loading,
    TResult? Function(MapsSuccess<T> value)? success,
    TResult? Function(MapsError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapsInitial<T> value)? initial,
    TResult Function(MapsLoading<T> value)? loading,
    TResult Function(MapsSuccess<T> value)? success,
    TResult Function(MapsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MapsLoading<T> implements MapsState<T> {
  const factory MapsLoading() = _$MapsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$MapsSuccessImplCopyWith<T, $Res> {
  factory _$$MapsSuccessImplCopyWith(_$MapsSuccessImpl<T> value,
          $Res Function(_$MapsSuccessImpl<T>) then) =
      __$$MapsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({MapsResponseModel mapsResponseModel});
}

/// @nodoc
class __$$MapsSuccessImplCopyWithImpl<T, $Res>
    extends _$MapsStateCopyWithImpl<T, $Res, _$MapsSuccessImpl<T>>
    implements _$$MapsSuccessImplCopyWith<T, $Res> {
  __$$MapsSuccessImplCopyWithImpl(
      _$MapsSuccessImpl<T> _value, $Res Function(_$MapsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapsResponseModel = null,
  }) {
    return _then(_$MapsSuccessImpl<T>(
      null == mapsResponseModel
          ? _value.mapsResponseModel
          : mapsResponseModel // ignore: cast_nullable_to_non_nullable
              as MapsResponseModel,
    ));
  }
}

/// @nodoc

class _$MapsSuccessImpl<T> implements MapsSuccess<T> {
  const _$MapsSuccessImpl(this.mapsResponseModel);

  @override
  final MapsResponseModel mapsResponseModel;

  @override
  String toString() {
    return 'MapsState<$T>.success(mapsResponseModel: $mapsResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapsSuccessImpl<T> &&
            (identical(other.mapsResponseModel, mapsResponseModel) ||
                other.mapsResponseModel == mapsResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapsResponseModel);

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapsSuccessImplCopyWith<T, _$MapsSuccessImpl<T>> get copyWith =>
      __$$MapsSuccessImplCopyWithImpl<T, _$MapsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MapsResponseModel mapsResponseModel) success,
    required TResult Function(String message) error,
  }) {
    return success(mapsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MapsResponseModel mapsResponseModel)? success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(mapsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MapsResponseModel mapsResponseModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(mapsResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapsInitial<T> value) initial,
    required TResult Function(MapsLoading<T> value) loading,
    required TResult Function(MapsSuccess<T> value) success,
    required TResult Function(MapsError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapsInitial<T> value)? initial,
    TResult? Function(MapsLoading<T> value)? loading,
    TResult? Function(MapsSuccess<T> value)? success,
    TResult? Function(MapsError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapsInitial<T> value)? initial,
    TResult Function(MapsLoading<T> value)? loading,
    TResult Function(MapsSuccess<T> value)? success,
    TResult Function(MapsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class MapsSuccess<T> implements MapsState<T> {
  const factory MapsSuccess(final MapsResponseModel mapsResponseModel) =
      _$MapsSuccessImpl<T>;

  MapsResponseModel get mapsResponseModel;

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapsSuccessImplCopyWith<T, _$MapsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapsErrorImplCopyWith<T, $Res> {
  factory _$$MapsErrorImplCopyWith(
          _$MapsErrorImpl<T> value, $Res Function(_$MapsErrorImpl<T>) then) =
      __$$MapsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MapsErrorImplCopyWithImpl<T, $Res>
    extends _$MapsStateCopyWithImpl<T, $Res, _$MapsErrorImpl<T>>
    implements _$$MapsErrorImplCopyWith<T, $Res> {
  __$$MapsErrorImplCopyWithImpl(
      _$MapsErrorImpl<T> _value, $Res Function(_$MapsErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MapsErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MapsErrorImpl<T> implements MapsError<T> {
  const _$MapsErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MapsState<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapsErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapsErrorImplCopyWith<T, _$MapsErrorImpl<T>> get copyWith =>
      __$$MapsErrorImplCopyWithImpl<T, _$MapsErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(MapsResponseModel mapsResponseModel) success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(MapsResponseModel mapsResponseModel)? success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(MapsResponseModel mapsResponseModel)? success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapsInitial<T> value) initial,
    required TResult Function(MapsLoading<T> value) loading,
    required TResult Function(MapsSuccess<T> value) success,
    required TResult Function(MapsError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapsInitial<T> value)? initial,
    TResult? Function(MapsLoading<T> value)? loading,
    TResult? Function(MapsSuccess<T> value)? success,
    TResult? Function(MapsError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapsInitial<T> value)? initial,
    TResult Function(MapsLoading<T> value)? loading,
    TResult Function(MapsSuccess<T> value)? success,
    TResult Function(MapsError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapsError<T> implements MapsState<T> {
  const factory MapsError(final String message) = _$MapsErrorImpl<T>;

  String get message;

  /// Create a copy of MapsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapsErrorImplCopyWith<T, _$MapsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

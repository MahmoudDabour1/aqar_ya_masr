// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponseModel searchModel) searchSuccess,
    required TResult Function(String error) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponseModel searchModel)? searchSuccess,
    TResult? Function(String error)? searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponseModel searchModel)? searchSuccess,
    TResult Function(String error)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchFailure value) searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchFailure value)? searchFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchInitialImplCopyWith<$Res> {
  factory _$$SearchInitialImplCopyWith(
          _$SearchInitialImpl value, $Res Function(_$SearchInitialImpl) then) =
      __$$SearchInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchInitialImpl>
    implements _$$SearchInitialImplCopyWith<$Res> {
  __$$SearchInitialImplCopyWithImpl(
      _$SearchInitialImpl _value, $Res Function(_$SearchInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchInitialImpl implements SearchInitial {
  const _$SearchInitialImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponseModel searchModel) searchSuccess,
    required TResult Function(String error) searchFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponseModel searchModel)? searchSuccess,
    TResult? Function(String error)? searchFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponseModel searchModel)? searchSuccess,
    TResult Function(String error)? searchFailure,
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
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial implements SearchState {
  const factory SearchInitial() = _$SearchInitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState.searchLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponseModel searchModel) searchSuccess,
    required TResult Function(String error) searchFailure,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponseModel searchModel)? searchSuccess,
    TResult? Function(String error)? searchFailure,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponseModel searchModel)? searchSuccess,
    TResult Function(String error)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchSuccessImplCopyWith<$Res> {
  factory _$$SearchSuccessImplCopyWith(
          _$SearchSuccessImpl value, $Res Function(_$SearchSuccessImpl) then) =
      __$$SearchSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResponseModel searchModel});
}

/// @nodoc
class __$$SearchSuccessImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchSuccessImpl>
    implements _$$SearchSuccessImplCopyWith<$Res> {
  __$$SearchSuccessImplCopyWithImpl(
      _$SearchSuccessImpl _value, $Res Function(_$SearchSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchModel = null,
  }) {
    return _then(_$SearchSuccessImpl(
      null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as SearchResponseModel,
    ));
  }
}

/// @nodoc

class _$SearchSuccessImpl implements SearchSuccess {
  const _$SearchSuccessImpl(this.searchModel);

  @override
  final SearchResponseModel searchModel;

  @override
  String toString() {
    return 'SearchState.searchSuccess(searchModel: $searchModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchSuccessImpl &&
            (identical(other.searchModel, searchModel) ||
                other.searchModel == searchModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchModel);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      __$$SearchSuccessImplCopyWithImpl<_$SearchSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponseModel searchModel) searchSuccess,
    required TResult Function(String error) searchFailure,
  }) {
    return searchSuccess(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponseModel searchModel)? searchSuccess,
    TResult? Function(String error)? searchFailure,
  }) {
    return searchSuccess?.call(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponseModel searchModel)? searchSuccess,
    TResult Function(String error)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(searchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return searchSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class SearchSuccess implements SearchState {
  const factory SearchSuccess(final SearchResponseModel searchModel) =
      _$SearchSuccessImpl;

  SearchResponseModel get searchModel;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchSuccessImplCopyWith<_$SearchSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchFailureImplCopyWith<$Res> {
  factory _$$SearchFailureImplCopyWith(
          _$SearchFailureImpl value, $Res Function(_$SearchFailureImpl) then) =
      __$$SearchFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SearchFailureImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchFailureImpl>
    implements _$$SearchFailureImplCopyWith<$Res> {
  __$$SearchFailureImplCopyWithImpl(
      _$SearchFailureImpl _value, $Res Function(_$SearchFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SearchFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchFailureImpl implements SearchFailure {
  const _$SearchFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SearchState.searchFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFailureImplCopyWith<_$SearchFailureImpl> get copyWith =>
      __$$SearchFailureImplCopyWithImpl<_$SearchFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() searchLoading,
    required TResult Function(SearchResponseModel searchModel) searchSuccess,
    required TResult Function(String error) searchFailure,
  }) {
    return searchFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? searchLoading,
    TResult? Function(SearchResponseModel searchModel)? searchSuccess,
    TResult? Function(String error)? searchFailure,
  }) {
    return searchFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? searchLoading,
    TResult Function(SearchResponseModel searchModel)? searchSuccess,
    TResult Function(String error)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) searchLoading,
    required TResult Function(SearchSuccess value) searchSuccess,
    required TResult Function(SearchFailure value) searchFailure,
  }) {
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? searchLoading,
    TResult? Function(SearchSuccess value)? searchSuccess,
    TResult? Function(SearchFailure value)? searchFailure,
  }) {
    return searchFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? searchLoading,
    TResult Function(SearchSuccess value)? searchSuccess,
    TResult Function(SearchFailure value)? searchFailure,
    required TResult orElse(),
  }) {
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class SearchFailure implements SearchState {
  const factory SearchFailure(final String error) = _$SearchFailureImpl;

  String get error;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFailureImplCopyWith<_$SearchFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

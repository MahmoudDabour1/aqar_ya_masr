

import 'package:freezed_annotation/freezed_annotation.dart';
part 'advertiser_state.freezed.dart';
@freezed
class AdvertiserState<T> with _$AdvertiserState<T> {
  const factory AdvertiserState.initial() = AdvertiserInitial;

  const factory AdvertiserState.loading() = AdvertiserLoading;

  const factory AdvertiserState.success(T data) = AdvertiserSuccess<T>;

  const factory AdvertiserState.failure({required String errorMessage}) =
      AdvertiserFailure<T>;
}


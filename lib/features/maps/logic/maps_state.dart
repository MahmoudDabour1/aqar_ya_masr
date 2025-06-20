
 import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/maps_response_model.dart';
part 'maps_state.freezed.dart';
@freezed
class MapsState<T> with _$MapsState<T> {
  const factory MapsState.initial() = MapsInitial<T>;

  const factory MapsState.loading() = MapsLoading<T>;

  const factory MapsState.success(MapsResponseModel mapsResponseModel) = MapsSuccess<T>;

  const factory MapsState.error(String message) = MapsError<T>;
 }



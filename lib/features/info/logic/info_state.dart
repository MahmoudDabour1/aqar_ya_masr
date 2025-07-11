import 'package:aqar_ya_masr/features/info/data/models/price_guide_model.dart';
import 'package:aqar_ya_masr/features/info/data/models/profile_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_state.freezed.dart';

@freezed
class InfoState<T> with _$InfoState<T> {
  const factory InfoState.initial() = InfoInitial;

  const factory InfoState.priceGuideLoading() = PriceGuideLoading;

  const factory InfoState.priceGuideSuccess(PriceGuideModel priceGuideModel) = PriceGuideSuccess;

  const factory InfoState.priceGuideFailure({required String error}) =
      PriceGuideFailure;
  const factory InfoState.profileDataLoading() = ProfileDataLoading;

  const factory InfoState.profileDataSuccess(ProfileDataModel  profileDataModel) = ProfileDataSuccess;

  const factory InfoState.profileDataFailure({required String error}) =
  ProfileDataFailure;
}

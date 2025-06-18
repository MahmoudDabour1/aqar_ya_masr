import 'package:aqar_ya_masr/features/info/data/repos/info_repos.dart';
import 'package:bloc/bloc.dart';

import 'info_state.dart';

class InfoCubit extends Cubit<InfoState> {
  final InfoRepos infoRepos;

  InfoCubit(this.infoRepos) : super(InfoState.initial());

  Future<void> getPriceGuideData() async {
    emit(InfoState.priceGuideLoading());
    final response = await infoRepos.getPriceGuideData();
    response.when(
      success: (priceGuideData) {
        emit(
          InfoState.priceGuideSuccess(priceGuideData),
        );
      },
      failure: (e) {
        emit(
          InfoState.priceGuideFailure(error: e.data!.errors.toString()),
        );
      },
    );
  }

  Future<void> getProfileData() async {
    emit(InfoState.profileDataLoading());
    final response = await infoRepos.getProfileData();
    response.when(
      success: (profileData) {
        emit(
          InfoState.profileDataSuccess(profileData),
        );
      },
      failure: (e) {
        emit(
          InfoState.profileDataFailure(error: e.data!.errors.toString()),
        );
      },
    );
  }


}

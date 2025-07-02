import 'package:aqar_ya_masr/features/advertiser/data/repos/advertiser_repos.dart';
import 'package:bloc/bloc.dart';

import 'advertiser_state.dart';

class AdvertiserCubit extends Cubit<AdvertiserState> {
  final AdvertiserRepos advertiserRepos;

  AdvertiserCubit(this.advertiserRepos) : super(AdvertiserState.initial());

  Future<void> fetchAdvertiserData(int? advertiserId) async {
    emit(AdvertiserState.loading());
    final response = await advertiserRepos.getAdvertiserDetails(advertiserId);
    response.when(
      success: (data) => emit(AdvertiserState.success(data)),
      failure: (error) => emit(
        AdvertiserState.failure(
          errorMessage: error.message.toString(),
        ),
      ),
    );
  }
}

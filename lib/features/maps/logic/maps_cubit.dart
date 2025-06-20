import 'package:aqar_ya_masr/features/maps/data/repos/maps_repos.dart';
import 'package:bloc/bloc.dart';

import 'maps_state.dart';

class MapsCubit extends Cubit<MapsState> {
  final MapsRepos mapsRepos;

  MapsCubit(this.mapsRepos) : super(MapsState.initial());
  double lat = 30.0444;
  double lng = 31.2357;
  int? filterOption ;

  Future<void> getMapsData([double? newLat, double? newLng]) async {
    emit(MapsState.loading());
    if (newLat != null && newLng != null) {
      lat = newLat;
      lng = newLng;
    }

    final result = await mapsRepos.getMaps(
      lat: lat,
      lng: lng,
      filterOptions: filterOption,
    );
    result.when(
      success: (data) {
        emit(MapsState.success(data));
      },
      failure: (e) => emit(
        MapsState.error(
          e.toString(),
        ),
      ),
    );
  }
}

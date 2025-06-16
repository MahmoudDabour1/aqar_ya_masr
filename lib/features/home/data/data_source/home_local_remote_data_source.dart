import 'package:aqar_ya_masr/core/utils/app_constants.dart';
import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalRemoteDataSource {
 AppInitModel? getAppInitData();
  Future<void> cacheAppInitData(AppInitModel appInitModel);
}

class HomeLocalRemoteDataSourceImpl implements HomeLocalRemoteDataSource {
   Box<AppInitModel> appInitBox = Hive.box<AppInitModel>(kAppInitBox);


  @override
  AppInitModel? getAppInitData() {
    return appInitBox.get(kAppInitData);
  }

  @override
  Future<void> cacheAppInitData(AppInitModel appInitModel) async {
    await appInitBox.put(kAppInitData, appInitModel);
  }
}
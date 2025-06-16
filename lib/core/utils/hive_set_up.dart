import 'package:aqar_ya_masr/features/home/data/models/app_init_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app_constants.dart';


Future<void> initHive() async {
  await Hive.initFlutter();
  _registerHiveAdapters();
  await Hive.openBox<AppInitModel>(kAppInitBox);
 }

void _registerHiveAdapters() {
  // Register Hive Adapters
  if (!Hive.isAdapterRegistered(10)) {
    Hive.registerAdapter(AppInitModelAdapter());
  }
  if (!Hive.isAdapterRegistered(11)) {
    Hive.registerAdapter(DataAdapter());
  }
  if (!Hive.isAdapterRegistered(12)) {
    Hive.registerAdapter(AboutAdapter());
  }
  if (!Hive.isAdapterRegistered(13)) {
    Hive.registerAdapter(CityAdapter());
  }
  if (!Hive.isAdapterRegistered(14)) {
    Hive.registerAdapter(FilterOptionAdapter());
  }
  if (!Hive.isAdapterRegistered(15)) {
    Hive.registerAdapter(MainTypeAdapter());
  }
}
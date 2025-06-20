import 'package:aqar_ya_masr/features/maps/logic/maps_cubit.dart';
import 'package:aqar_ya_masr/features/maps/presentation/widgets/map_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:location/location.dart';

import '../../../core/di/dependency_injection.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  LocationData? locationData;

  @override
  void initState() {
    super.initState();
    fetchLocation();
  }

  void fetchLocation() async {
    locationData = await getCurrentLocation();
    if (locationData != null) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: locationData == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : BlocProvider(
                create: (context) => MapsCubit(
                  sl(),
                )..getMapsData(
                    locationData!.latitude!,
                    locationData!.longitude!,
                  ),
                child: MapContentWidget(
                  locationData: locationData!,
                ),
              ),
      ),
    );
  }

  Future<LocationData?> getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return null;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return null;
    }

    return await location.getLocation();
  }
}

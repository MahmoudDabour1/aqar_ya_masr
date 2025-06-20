import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import '../../../../core/routing/router_observer.dart';
import '../../../home/data/models/ad_details_model.dart';
import '../../../home/logic/home_cubit.dart';
import '../../logic/maps_cubit.dart';
import '../../logic/maps_state.dart';
import 'aqars_count_widget.dart';
import 'google_map_widget.dart';
import 'map_aqar_details_container.dart';
import 'map_custom_marker_widget.dart';
import 'map_floating_action_button_widget.dart';
import 'map_header.dart';

class MapContentWidget extends StatefulWidget {
  final LocationData locationData;

  const MapContentWidget({super.key, required this.locationData});

  @override
  State<MapContentWidget> createState() => _MapContentWidgetState();
}

class _MapContentWidgetState extends State<MapContentWidget> {
  late GoogleMapController _mapController;
  var myMarkers = HashSet<Marker>();
  AdDetailsModel? selectedAd;
  int aqarsCount = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapsCubit, MapsState>(
      builder: (context, state) {
        state.maybeWhen(
          loading: () {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
          success: (data) async {
            aqarsCount = data.data?.ads?.length ?? 0;
            for (var item in data.data?.ads ?? []) {
              final markerIcon =
                  await createCustomMarker(item.price.toString());

              myMarkers.add(
                Marker(
                  onTap: () async {
                    await context.read<HomeCubit>().getAdDetails(item.id ?? 0);
                    setState(() {
                      selectedAd = context.read<HomeCubit>().selectedAd;
                    });
                  },
                  markerId: MarkerId(item.id.toString()),
                  position: LatLng(
                    double.parse(item.lat.toString()),
                    double.parse(item.lng.toString()),
                  ),
                  icon: markerIcon,
                  infoWindow: InfoWindow.noText,
                ),
              );
            }
          },
          orElse: () => SizedBox.shrink,
        );
        return Stack(
          children: [
            GoogleMapWidget(
              selectedAd: selectedAd,
              locationData: widget.locationData,
              onMapCreated: (controller) {
                _mapController = controller;
              },
              onClearSelectedAd: () {
                setState(() {
                  selectedAd = null;
                });
              },
              myMarkers: myMarkers,
            ),
            if (selectedAd != null)
              MapAqarDetailsContainer(
                selectedAd: selectedAd,
              ),
            if (aqarsCount != 0)
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: AqarsCountWidget(
                    aqarsCount: aqarsCount.toString(),
                  ),
                ),
              ),
            MapFloatingActionButtonWidget(onPressed: () {
              _goToCurrentLocation();
              logger.w(
                  'Current Location: ${widget.locationData.latitude}, ${widget.locationData.longitude}');
            }),
            MapHeader(),
          ],
        );
      },
    );
  }

  void _goToCurrentLocation() {
    _mapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(
            widget.locationData.latitude!, widget.locationData.longitude!),
        zoom: 12,
      ),
    ));
  }
}
